FROM debian:buster

RUN groupadd -r mysql && useradd -r -g mysql mysql

RUN apt update
RUN apt -y upgrade
RUN apt install -y mariadb-server

RUN mkdir -p /var/run/mysqld/ /var/lib/mysql
RUN chown -R mysql:mysql /var/run/mysqld
RUN chown -R  mysql:mysql /var/lib/mysql
RUN usermod -d /var/lib/mysql/ mysql

ADD srcs/50-server.cnf /etc/mysql/mariadb.conf.d/
RUN chmod 444 /etc/mysql/mariadb.conf.d/50-server.cnf
RUN   sed -i 's/^\(bind-address\s.*\)/# \1/' /etc/mysql/my.cnf
ADD srcs/start.sh /

EXPOSE 3306

ENTRYPOINT [ "sh", "/start.sh" ]