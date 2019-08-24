#!/bin/sh

# Run this script first.

docker image pull rails:4

cd mobydock

docker-compose up

