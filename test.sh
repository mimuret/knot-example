#!/bin/sh -x

# build and start the containers
docker compose up -d

# stop container
docker compose kill -s SIGTERM

sleep 5

# check container exit code
docker compose ps -a
