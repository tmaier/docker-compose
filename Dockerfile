ARG DOCKER_VERSION=latest
FROM docker:${DOCKER_VERSION}

ARG COMPOSE_VERSION
ARG IMAGE_TYPE="slim"

RUN apk add --no-cache \
  python \
  py-pip \
  libffi \
  && \
  apk add --no-cache --virtual .build-deps \
  build-base \
  libffi-dev \
  python-dev \
  openssl-dev \
  && \
  if [[ "${IMAGE_TYPE}" == "fat" ]]; then \
    apk add --no-cache \
    bash \
    ca-certificates \
    git \
    perl \
    openssh-client \
    curl \
    gnupg \
    openjdk8 \
    openssl \
  ; fi \
  && \
  pip install "docker-compose${COMPOSE_VERSION:+==}${COMPOSE_VERSION}" \
  && \
  if [[ "${IMAGE_TYPE}" == "fat" ]]; then \
    pip install awscli awsebcli direnv pipenv \
  ; fi && \
  apk del .build-deps

LABEL \
  org.opencontainers.image.authors="Tobias Maier <tobias.maier@baucloud.com>" \
  org.opencontainers.image.description="This docker image installs docker-compose on top of the docker image." \
  org.opencontainers.image.licenses="MIT" \
  org.opencontainers.image.source="https://github.com/tmaier/docker-compose" \
  org.opencontainers.image.title="Docker Compose on docker base image" \
  org.opencontainers.image.vendor="BauCloud GmbH" \
  org.opencontainers.image.version="${DOCKER_VERSION} with docker-compose ${COMPOSE_VERSION}"
