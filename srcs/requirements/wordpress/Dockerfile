FROM debian:buster

RUN apt-get update -y
RUN apt-get install wget -y
RUN apt-get install php-fpm -y
RUN apt-get install php-mysqlnd -y

ADD ./conf ./
ADD ./tools ./

ENTRYPOINT sh start.sh
