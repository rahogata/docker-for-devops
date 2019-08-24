#!/bin/sh

docker image pull rails:4

docker container run -it --rm --user "$(id -u):$(id -g)" -v "$PWD":/usr/src/app  \
    -w /usr/src/app rails:4 rails new --skip-bundle mobydock

touch Dockerfile docker-compose.yml .dockerignore
