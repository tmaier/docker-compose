ARG DOCKER_VERSION=1.12
FROM docker:${DOCKER_VERSION}

ARG COMPOSE_VERSION=1.8.*

RUN apk add --no-cache py-pip
RUN pip install "docker-compose${COMPOSE_VERSION:+==}${COMPOSE_VERSION}"

LABEL \
  org.opencontainers.image.authors="Tobias Maier <tobias.maier@baucloud.com>" \
  org.opencontainers.image.description="This docker image installs docker-compose on top of the docker image." \
  org.opencontainers.image.licenses="MIT" \
  org.opencontainers.image.source="https://github.com/tmaier/docker-compose" \
  org.opencontainers.image.title="Docker Compose on docker base image" \
  org.opencontainers.image.vendor="BauCloud GmbH"
