FROM debian:buster

RUN apt update && apt upgrade -y
RUN apt install -y nginx

RUN mkdir -p /etc/nginx/ssl
ADD srcs/default.conf /etc/nginx/conf.d/
ADD cert/ca-key.key /etc/nginx/ssl/
ADD cert/ca-cert.crt /etc/nginx/ssl/
RUN chown -R root:root /etc/nginx/ssl
RUN chmod -R 600 /etc/nginx/ssl
CMD ["nginx", "-g", "daemon off;"]