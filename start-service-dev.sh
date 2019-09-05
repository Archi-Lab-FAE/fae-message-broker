#!/usr/bin/env bash


CURRENT=$(pwd)

docker network inspect fae_backend &> /dev/null || docker network create fae_backend

# pull service
docker-compose \
  -f "$CURRENT/docker-compose-dev.yml" \
  pull
  
# start service
docker-compose -p message-broker \
  -f "$CURRENT/docker-compose-dev.yml" \
  up -d