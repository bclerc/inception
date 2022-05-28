FROM debian:buster

RUN apt update && apt install -y git curl
RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash - 
RUN git clone https://github.com/louislam/uptime-kuma.git
RUN apt install nodejs
ADD srcs/kuma-entry-point.sh /

COPY srcs/uptime-kuma /uptime-kuma

WORKDIR /uptime-kuma
CMD ["bash", "/kuma-entry-point.sh"]