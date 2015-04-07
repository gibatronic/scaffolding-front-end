header=printf '  $@... '
footer=printf $(if $$? = 0, '\x1b[32mDONE', '\x1b[31mERROR')"\x1b[0m\n"

HTML_MINIFIER=node_modules/html-minifier/cli.js
MUSTACHE=node_modules/mu2/bin/mu

.SILENT:

templates: tree
	$(call header)
	$(MUSTACHE) --view "`cat package.json`" --root client/templates main.html > public/main.html
	$(HTML_MINIFIER) --collapse-whitespace --output public/main.html --remove-comments public/main.html
	$(call footer)

tree:
	$(call header)
	mkdir -p public/scripts
	mkdir -p public/styles
	$(call footer)
