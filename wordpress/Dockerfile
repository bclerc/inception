FROM debian:buster

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y php php-fpm php-mysql wget unzip

ADD srcs/wordpress-entry-point.sh /

ADD srcs/www.conf /etc/php/7.3/fpm/pool.d/

RUN mkdir -p /run/php/

ENTRYPOINT [ "sh", "/wordpress-entry-point.sh" ]

