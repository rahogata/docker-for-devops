#!/bin/sh

# Run this script in a new terminal afer running init.sh.

cd mobydock

# Db reset rake
docker-compose run --user "$(id -u):$(id -g)" mobydock rake db:reset

# Seed db
docker-compose run --user "$(id -u):$(id -g)" mobydock rake db:seed

# Migrate db
docker-compose run --user "$(id -u):$(id -g)" mobydock rake db:migrate

# create dummy model
docker-compose run --user "$(id -u):$(id -g)" mobydock rails g model Dummy foo

# destroy dummy model
docker-compose run --user "$(id -u):$(id -g)" mobydock rails d model Dummy foo

# bring up container
docker-compose up