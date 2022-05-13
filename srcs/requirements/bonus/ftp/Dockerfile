FROM debian:buster

RUN apt update && apt upgrade -y
RUN apt install -y vsftpd

ADD srcs/vsftpd.conf /etc/
ADD srcs/ftp-entrypoint.sh /
ADD srcs/.cert/vsftpd.crt /etc/ssl/certs/
ADD srcs/.cert/vsftpd.key /etc/ssl/private/

ENTRYPOINT [ "sh" , "/ftp-entrypoint.sh" ]