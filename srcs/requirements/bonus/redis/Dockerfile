FROM debian:buster

RUN apt update && apt upgrade -y
RUN apt install -y redis-server
RUN apt update

ADD ./srcs/redis-entry-point.sh /

ENTRYPOINT [ "bash", "/redis-entry-point.sh"]