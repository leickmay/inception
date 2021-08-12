FROM debian:buster

RUN apt-get update -y
RUN apt-get install nginx -y

ADD ./conf ./

ENTRYPOINT sh start.sh

EXPOSE 80
