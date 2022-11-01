# Docker Compose

[![Docker Automated buil](https://img.shields.io/docker/automated/tmaier/docker-compose.svg)](https://hub.docker.com/r/tmaier/docker-compose/)
[![Docker Pulls](https://img.shields.io/docker/pulls/tmaier/docker-compose.svg)](https://hub.docker.com/r/tmaier/docker-compose/)
[![GitHub issues](https://img.shields.io/github/issues/tmaier/docker-compose.svg)](https://github.com/tmaier/docker-compose/issues)
[![GitHub stars](https://img.shields.io/github/stars/tmaier/docker-compose.svg?style=social&label=Star)](https://github.com/tmaier/docker-compose)

This docker image installs docker-compose on top of the `docker` image.
This is very useful for CI pipelines, which leverage "Docker in Docker".

## Docker versions supported

There are versions based on different docker versions, e.g. `latest`, `20.10`, `19.03` and `19`.

docker-compose matches the latest minor version available when the docker release was made. Eg, `19.03` includes docker-compose 1.27.4. The `latest` tag always includes the latest docker-compose build.

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

## How to add support for a new docker version to this repository?

You must only provide a Pull Request for the file [`DOCKER_AND_COMPOSE_VERSION_MATRIX`](./DOCKER_AND_COMPOSE_VERSION_MATRIX).

`DOCKER_AND_COMPOSE_VERSION_MATRIX` specifies in the first column the docker version.
The second column states the most recent release of docker-compose when the docker version has been released.

You can see the latest matching versions of both by checking their release notes:

- https://github.com/docker/docker-ce/releases or https://hub.docker.com/_/docker
- https://github.com/docker/compose/releases

## Common issues and possible fixes

### `ERROR: error during connect: Get http://docker:2375/v1.40/info: dial tcp: ...`

> As of version 19.03, docker:dind will automatically generate TLS certificates and require using them for communication.

See <https://github.com/tmaier/docker-compose/issues/21#issuecomment-578780163>

## Author

[Tobias L. Maier](http://tobiasmaier.info) for [BauCloud GmbH](https://www.baucloud.com)
