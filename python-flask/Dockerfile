# goal: run simple python flask server
#
# steps:
# - [x] simple hello world
# - [x] python stack
# - [ ] flask dev server
# - [ ] prod uwsgi or similar server

# questions:
# - hub has many results for python


FROM alpine:3.8

RUN apk --no-cache add \
    python3

COPY hello.py /hello.py

CMD ["/hello.py"]
