# goal: run simple python flask server
#
# steps:
# - [x] simple hello world
# - [x] python stack
# - [x] flask dev server
# - [ ] prod uwsgi or similar server

# questions:
# - hub has many results for python


FROM alpine:3.8

EXPOSE 5000

RUN apk --no-cache add \
    python3 \
    py3-pip

RUN pip3 --version
RUN pip3 install flask

COPY hello.py /hello.py

CMD ["/hello.py"]
