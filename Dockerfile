FROM python:3.7-alpine

#to allow python to buffer output
ENV PYTHONUNBUFFERED 1

#copy deps
COPY ./requirements.txt /requirements.txt
#docker container should be as small as possible
RUN apk add --update --no-cache postgresql-client
#temp requirements to not beef up docker image
RUN apk add --update --no-cache --virtual .temp-build-deps \
    gcc libc-dev linux-headers postgresql-dev
#install deps
RUN pip install -r /requirements.txt

RUN apk del .temp-build-deps

RUN mkdir /app
WORKDIR /app
COPY ./app /app

#make run-only user named user
RUN adduser -D user
#switch to user named user
USER user
