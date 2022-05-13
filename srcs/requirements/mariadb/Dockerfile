FROM debian:buster

RUN apt update
RUN apt -y upgrade
RUN apt install -y mariadb-server

RUN mkdir -p /var/run/mysqld/
RUN chown mysql /var/run/mysqld

ADD srcs/my.cnf /etc/mysql/
ADD srcs/start.sh /

EXPOSE 3306

ENTRYPOINT [ "sh", "/start.sh" ]