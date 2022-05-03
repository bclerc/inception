FROM debian:buster

RUN apt update && apt upgrade -y
RUN apt install -y nginx

ADD srcs/default.conf /etc/nginx/conf.d/

CMD ["nginx", "-g", "daemon off;"]