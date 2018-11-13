# goal: run simple python flask server
#
# steps:
# - [x] simple hello world
# - [x] python stack
# - [x] flask dev server
# - [x] prod uwsgi or similar server

# questions:
# - hub has many results for python


FROM python:3.7-alpine3.8

EXPOSE 5000

RUN pip3 install \
    flask \
    gunicorn

COPY hello.py /hello.py

CMD ["gunicorn", "-w 3", "-b :5000", "hello:app"]
