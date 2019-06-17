image    := playground-entrypoint:latest

.PHONY: build
build:
	docker build . -t $(image)

.PHONY: run
run: build
	docker run $(image)
	docker run $(image) external args
