N     := 0
image := custom-debian:latest

.NOTPARALLEL: prepare
.PHONY: prepare
prepare: build clean info

.PHONY: info
info:
	docker image ls -a

.PHONY: build
build:
	docker build . -f Dockerfile$(N) -t $(image)

.PHONY: clean
clean:
	-docker image rm $(image)

.PHONY: dist-clean
dist-clean: clean
	docker image prune -a
