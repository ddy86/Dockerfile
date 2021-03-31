FROM nginx:1.19.8

COPY  sources.list /etc/apt/

RUN  apt-get update && apt-get install telnet dnsutils netcat curl -y