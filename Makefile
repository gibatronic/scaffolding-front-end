FOOTER=printf $(if $$? = 0, '\x1b[32mDONE', '\x1b[31mERROR')"\x1b[0m\n"
HEADER=printf '  $@... '
HTML_MINIFIER=node_modules/html-minifier/cli.js
MUSTACHE=node_modules/mu2/bin/mu
WEBPACK=node_modules/webpack/bin/webpack.js

.SILENT:

scripts: tree
	$(HEADER)
	$(WEBPACK) --bail -p client/scripts/main.js public/scripts/main.js > /dev/null
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
