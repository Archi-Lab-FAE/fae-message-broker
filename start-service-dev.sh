#!/usr/bin/env bash

CURRENT="$(
  cd "$(dirname "$0")"
  pwd
)"

# Create network
docker network inspect fae_backend &>/dev/null || docker network create fae_backend

# Pull service
docker-compose \
  -f "$CURRENT/docker-compose-dev.yml" \
  pull

# Start service
docker-compose -p message-broker \
  -f "$CURRENT/docker-compose-dev.yml" \
  up -d
