FROM docker:latest
MAINTAINER Tobias Maier <tobias.maier@baucloud.com>

RUN curl \ 
      -L "https://github.com/docker/compose/releases/download/1.9.0/docker-compose-$(uname -s)-$(uname -m)" \
      -o /usr/local/bin/docker-compose
RUN chmod +x /usr/local/bin/docker-compose
