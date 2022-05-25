FROM debian:buster

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y php php-fpm php-mysql php-redis curl
RUN apt-get update && apt-get upgrade -y
RUN mkdir -p /run/php /var/www/html/adminer
ADD srcs/index.php /var/www/html/adminer/
RUN chmod -R 755 /var/www/html/adminer
ADD srcs/wordpress-entry-point.sh /
ADD srcs/www.conf /etc/php/7.3/fpm/pool.d/
ADD srcs/wp-config.php /

ENTRYPOINT [ "sh", "/wordpress-entry-point.sh" ]

