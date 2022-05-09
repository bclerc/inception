FROM debian:latest

RUN apt update && apt upgrade -y
RUN apt install -y redis-server
RUN apt update 
ENTRYPOINT [ "redis-server", "--protected-mode", "no" ]