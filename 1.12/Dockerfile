ARG COMPOSE_VERSION=1.8.*

FROM docker:1.12
MAINTAINER Tobias Maier <tobias.maier@baucloud.com>

RUN apk add --no-cache py-pip
RUN pip install "docker-compose${COMPOSE_VERSION:+==}${COMPOSE_VERSION}"
