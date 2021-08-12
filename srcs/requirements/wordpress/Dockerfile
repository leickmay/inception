FROM debian:buster

RUN apt-get update -y
RUN apt-get install wget -y
RUN apt-get install php-fpm -y

ADD ./conf ./
ENTRYPOINT sh start.sh
