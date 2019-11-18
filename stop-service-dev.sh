#!/usr/bin/env bash

CURRENT="$(
  cd "$(dirname "$0")"
  pwd
)"
PROJECT_NAME="fae-message-broker"

# Stop service
docker-compose -p ${PROJECT_NAME} \
  -f "$CURRENT/docker-compose.dev.yml" \
  down

# Remove network
docker network inspect fae_backend &>/dev/null && docker network rm fae_backend
