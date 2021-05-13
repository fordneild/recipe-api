FROM python:3.7-alpine

#to allow python to buffer output
ENV PYTHONUNBUFFERED 1

#copy deps
COPY ./requirements.txt /requirements.txt 
#install deps
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

#make run-only user named user
RUN adduser -D user
#switch to user named user
USER user
