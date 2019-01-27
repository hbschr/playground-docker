image  := dockerignore:latest

.PHONY: build
build:
	docker build . -t $(image)

.PHONY: run
run: build
	docker run $(image)

.PHONY: clean
clean:
	-docker image rm $(image)

.PHONY: dist-clean
dist-clean: clean
