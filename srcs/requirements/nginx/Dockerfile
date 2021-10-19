FROM debian:buster

RUN apt-get update && apt-get upgrade -y
RUN apt-get install nginx -y
RUN apt-get install openssl -y

ADD ./conf ./
ADD ./tools ./

ENTRYPOINT sh start.sh
