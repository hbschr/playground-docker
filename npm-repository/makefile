# goal:
# check if `npm install` inside docker has network access to npm repository.

image      := npm-install:latest
DOCKERFILE := node-alpine.Dockerfile

.PHONY: build
build:
	docker build --no-cache . -f $(DOCKERFILE) -t $(image)

.PHONY: network
network: build
	docker run $(image) nslookup repo.eu.idealo.com
	docker run $(image) ping -c 1 repo.eu.idealo.com

.PHONY: run
run: build
	docker run $(image) npm get registry
	docker run $(image)

.PHONY: interactive
interactive: build
	docker run -it $(image) sh

.PHONY: clean
clean:
	rm -rf node_modules
	rm -f package-lock.json

.PHONY: distclean
distclean: clean
