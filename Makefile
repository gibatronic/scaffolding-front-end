.PHONY: build \
				clean \
				images \
				install \
				run \
				scripts \
				styles \
				templates \
				tree \
				watch

.SILENT:

build: images scripts styles templates

clean:
	tasks/clean

images: tree
	tasks/images

install:
	tasks/install

run: build
	tasks/run

scripts: tree
	tasks/scripts

styles: tree
	tasks/styles

templates: tree
	tasks/templates

tree:
	tasks/tree

watch: build
	tasks/watch
