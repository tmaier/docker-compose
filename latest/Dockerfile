FROM docker:latest
MAINTAINER Tobias Maier <tobias.maier@baucloud.com>

RUN apk add --no-cache bash
RUN curl -L https://github.com/docker/compose/releases/download/1.9.0/run.sh > /usr/local/bin/docker-compose
RUN chmod +x /usr/local/bin/docker-compose
