FROM debian:buster

RUN apt-get update && apt-get upgrade -y
RUN apt-get install mariadb-server -y

ADD ./conf ./
ADD ./tools ./

ENV MYSQL_USER="user"
ENV MYSQL_PWD="pass"
ENV MYSQL_DB="wordpress"

ENTRYPOINT sh start.sh
