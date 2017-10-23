FROM azul/zulu-openjdk-alpine:8
MAINTAINER Saul Hernandez <me@sauldhernandez.com>

RUN wget https://get.docker.com/builds/Linux/x86_64/docker-1.16.0.tgz -O /docker.tgz && \
    cd / && \
    tar -xvzf /docker.tgz && \
    mv /docker/* /usr/local/bin && \
    rm /docker.tgz

RUN wget https://github.com/docker/compose/releases/download/1.16.1/docker-compose-`uname -s`-`uname -m` -O /usr/local/bin/docker-compose && \
    chmod +x /usr/local/bin/docker-compose
    
