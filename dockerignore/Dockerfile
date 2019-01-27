FROM alpine:latest

# when building entire pwd will be send to docker daemon, including unneeded files
# use `.dockerignore` wisely.
# unneeded files will not show up in built image though.

# CMD ["pwd"]
# CMD ["ls", "-la"]
CMD ["du", "-hs"]
