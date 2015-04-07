header=printf '  $@... '
footer=printf $(if $$? = 0, '\x1b[32mDONE', '\x1b[31mERROR')"\x1b[0m\n"

.SILENT:

tree:
	$(call header)
	mkdir -p public/scripts
	mkdir -p public/styles
	$(call footer)
