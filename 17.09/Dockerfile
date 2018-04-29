FROM docker:17.09
MAINTAINER Tobias Maier <tobias.maier@baucloud.com>

ARG COMPOSE_VERSION=1.16.*

RUN apk add --no-cache py-pip
RUN pip install "docker-compose${COMPOSE_VERSION:+==}${COMPOSE_VERSION}"
