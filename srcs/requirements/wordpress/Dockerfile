FROM debian:buster

RUN apt-get update -y
RUN apt-get install wget -y
RUN apt-get install php-fpm -y
RUN apt-get install php-mysqlnd -y

ENV MYSQL_USER="user"
ENV MYSQL_PWD="pass"
ENV MYSQL_DB="wordpress"

ADD ./conf ./
ADD ./tools ./

ENTRYPOINT sh start.sh
