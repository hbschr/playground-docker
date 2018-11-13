# goal: run simple python flask server
#
# steps:
# - [x] simple hello world
# - [x] python stack
# - [x] flask dev server
# - [ ] prod uwsgi or similar server

# questions:
# - hub has many results for python


FROM python:3.7-alpine3.8

EXPOSE 5000

RUN pip3 --version
RUN pip3 install flask

COPY hello.py /hello.py

CMD ["/hello.py"]
