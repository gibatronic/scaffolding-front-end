BOURBON=node_modules/bourbon/app/assets/stylesheets
FOOTER=printf $(if $$? = 0, '\x1b[32mDONE', '\x1b[31mERROR')"\x1b[0m\n"
HEADER=printf '  $@... '
HTML_MINIFIER=node_modules/html-minifier/cli.js
MUSTACHE=node_modules/mu2/bin/mu
SASS=node_modules/node-sass/bin/node-sass
VIGILIA=node_modules/vigilia/bin/vigilia
WEBPACK=node_modules/webpack/bin/webpack.js

.SILENT:

build: scripts styles templates

clean:
	$(HEADER)
	rm -fr public
	rm -f npm-debug.log
	$(FOOTER)

scripts: tree
	$(HEADER)
	$(WEBPACK) --bail -p client/scripts/main.js public/scripts/main.js > /dev/null
	$(FOOTER)

styles: tree
	$(HEADER)
	$(SASS) --include-path $(BOURBON) --output public/styles --output-style compressed --quiet client/styles/main.scss public/styles/main.css
	$(FOOTER)

templates: tree
	$(HEADER)
	$(MUSTACHE) --view "`cat package.json`" --root client/templates main.html > public/main.html
	$(HTML_MINIFIER) --collapse-whitespace --output public/main.html --remove-comments public/main.html
	$(FOOTER)

tree:
	$(HEADER)
	mkdir -p public/scripts
	mkdir -p public/styles
	$(FOOTER)

watch:
	$(VIGILIA) 'client/scripts/**/*.js':'make scripts' 'client/styles/**/*.scss':'make styles' 'client/templates/**/*.html':'make templates'
