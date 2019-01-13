image := python-flask:latest

.PHONY: build
build:
	docker build . -t $(image)

.PHONY: run
run: build
	docker run -p 5000:5000 $(image)

.PHONY: run-compose
run-compose: build
	docker-compose up
