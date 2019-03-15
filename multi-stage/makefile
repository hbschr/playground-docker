image := npm-build:latest

.PHONY: build
build:
	docker build . -t $(image)

.PHONY: rebuild
rebuild:
	docker build --no-cache . -t $(image)

.PHONY: run
run: build
	docker run $(image)

.PHONY: clean
clean:
	rm -rf node_modules
	rm -f package-lock.json
