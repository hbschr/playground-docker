# goal: run simple python flask server
#
# steps:
# - [x] simple hello world
# - [x] python stack
# - [x] flask dev server
# - [x] prod uwsgi or similar server
#
# ideas / brainstorming:
# - [ ] possibly run gunicorn behind nginx (install nginx and configure proxy)
# - [ ] make `-w` configurable
# - [ ] add configurable domain w/ letsencrypt certificate
# - [ ] run flask app in kubernetes
# - [ ] add db container, make flask read from db
# - [ ] serve js spa which is built in build-env docker (multistage)

FROM python:3.7-alpine3.8

EXPOSE 5000

RUN pip3 install \
    flask \
    gunicorn

COPY hello.py /hello.py

CMD ["gunicorn", "-w 3", "-b :5000", "hello:app"]
