# goal:
# use container to build js frontend.
# src lives on host and is mounted into container.

image    := frontend-build:latest
repo_url := https://github.com/hbschr/demo-react-todo.git
src      := src

.PHONY: git-clone
git-clone:
	-git clone $(repo_url) $(src)

.PHONY: build
build:
	docker build . -t $(image)

.PHONY: run
run: build git-clone
	docker run \
	--mount type=bind,source="$(shell pwd)"/$(src),target=/app \
	$(image)

# .PHONY: run-compose
# run-compose: build
# 	docker-compose up
