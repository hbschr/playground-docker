# goal:
# check environment in which `os.tmpdir()` is set to cwd.

image    := playground-os-tmpdir:latest

.PHONY: build
build:
	docker build . -t $(image)

.PHONY: run
run: build
	docker run $(image) phing -f phing.xml
