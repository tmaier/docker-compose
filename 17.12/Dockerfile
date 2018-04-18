ARG COMPOSE_VERSION=1.18.*

FROM docker:17.12
MAINTAINER Tobias Maier <tobias.maier@baucloud.com>

RUN apk add --no-cache py-pip
RUN pip install "docker-compose${COMPOSE_VERSION:+==}${COMPOSE_VERSION}"
