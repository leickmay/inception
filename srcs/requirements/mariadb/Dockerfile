FROM debian:buster

RUN apt-get update && apt-get upgrade -y
RUN apt-get install mariadb-server -y

ADD ./conf ./
ADD ./tools ./

RUN cp 50-server.cnf etc/mysql/mariadb.conf.d

ARG SQL_NAME
ARG SQL_USER
ARG SQL_PASS
ARG SQL_ROOTPASS
RUN sh env.sh
RUN service mysql start && mysql < createdb.sql
CMD mysqld_safe
