FROM debian:buster

RUN apt update && apt upgrade -y
RUN apt install -y nginx

RUN mkdir -p /etc/nginx/ssl
ADD srcs/default.conf /etc/nginx/conf.d/
ADD cert/wordpress /etc/nginx/ssl/
ADD cert/site /etc/nginx/ssl/
ADD cert/adminer /etc/nginx/ssl/

RUN chmod -R 600 /etc/nginx/ssl
CMD ["nginx", "-g", "daemon off;"]