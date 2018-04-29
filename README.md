# Docker Compose

[![Docker Automated buil](https://img.shields.io/docker/automated/tmaier/docker-compose.svg)](https://hub.docker.com/r/tmaier/docker-compose/)
[![Docker Pulls](https://img.shields.io/docker/pulls/tmaier/docker-compose.svg)](https://hub.docker.com/r/tmaier/docker-compose/)
[![GitHub issues](https://img.shields.io/github/issues/tmaier/docker-compose.svg)](https://github.com/tmaier/docker-compose/issues)
[![GitHub stars](https://img.shields.io/github/stars/tmaier/docker-compose.svg?style=social&label=Star)](https://github.com/tmaier/docker-compose)

This docker image installs docker-compose on top of the `docker` image.
This is very useful for CI pipelines, which leverage "Docker in Docker".

## Docker versions supported

There are versions based on different docker versions, e.g. `latest`, `17.06`, `17.03` and `1.13`.

docker-compose matches the latest minor version available when the docker release was made. Eg, `17.06` includes docker-compose 1.15.0. The `latest` tag always includes the latest docker-compose build.

All available Docker Engine versions and the respective Docker Compose versions are defined in [`DOCKER_AND_COMPOSE_VERSION_MATRIX`](./DOCKER_AND_COMPOSE_VERSION_MATRIX).

Please open an issue or a pull request (preferred) [at GitHub](https://github.com/tmaier/docker-compose), if a version is missing.

## Usage instructions for GitLab CI

You may use it like this in your `.gitlab-ci.yml` file.

```yaml
image: tmaier/docker-compose:latest

services:
  - docker:dind

before_script:
  - docker info
  - docker-compose --version

build image:
  stage: build
  script:
    - docker-compose build
```

## Author

[Tobias L. Maier](http://tobiasmaier.info) for [BauCloud GmbH](https://www.baucloud.com)
