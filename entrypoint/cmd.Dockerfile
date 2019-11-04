FROM alpine:latest

ENTRYPOINT ["echo", "fixed", "args"]
CMD ["default", "args"]
