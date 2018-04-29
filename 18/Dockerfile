FROM docker:18
MAINTAINER Tobias Maier <tobias.maier@baucloud.com>

ARG COMPOSE_VERSION=1.19.*

RUN apk add --no-cache py-pip
RUN pip install "docker-compose${COMPOSE_VERSION:+==}${COMPOSE_VERSION}"
