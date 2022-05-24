FROM debian:buster

RUN apt update
RUN apt -y upgrade
RUN apt install -y mariadb-server

RUN mkdir -p /var/run/mysqld/ /var/lib/mysql
RUN chown -R mysql:mysql /var/run/mysqld
RUN chown -R  mysql:mysql /var/lib/mysql
RUN chown -R mysql:mysql /var/log/mysql/
RUN usermod -d /var/lib/mysql/ mysql


ADD srcs/50-server.cnf /etc/mysql/mariadb.conf.d/
RUN chmod 444 /etc/mysql/mariadb.conf.d/50-server.cnf

ADD srcs/mariadb-entry-point.sh /
ADD srcs/install.sh /

RUN chmod +x /install.sh /mariadb-entry-point.sh
RUN	usermod -aG mysql mysql

WORKDIR /var/lib/mysql

EXPOSE 3306

CMD [ "bash", "/mariadb-entry-point.sh" ]