image    := playground-entrypoint:latest

.PHONY: build-cmd
build-cmd:
	docker build . -f cmd.Dockerfile -t $(image)

.PHONY: run-cmd
run-cmd: build-cmd
	docker run $(image)
	docker run $(image) external args

.PHONY: build-exit
build-exit:
	docker build . -f exit.Dockerfile -t $(image)

.PHONY: run-exit
run-exit: build-exit
	docker run $(image)
