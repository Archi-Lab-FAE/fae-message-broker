#!/usr/bin/env bash
CURRENT=$(pwd)

# start service
docker-compose -p message-broker \
  -f "$CURRENT/docker-compose-dev.yml" \
  down
  

docker network inspect coalbase_backend &> /dev/null && docker network rm coalbase_backend