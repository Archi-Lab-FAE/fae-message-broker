#!/usr/bin/env bash

CURRENT="$(
  cd "$(dirname "$0")"
  pwd
)"
PROJECT_NAME="fae-message-broker"

# Create network
docker network inspect fae_backend &>/dev/null || docker network create fae_backend

# Pull service
docker-compose \
  -f "${CURRENT}/docker-compose.dev.yml" \
  pull

# Start service
docker-compose -p "${PROJECT_NAME}" \
  -f "${CURRENT}/docker-compose.dev.yml" \
  up -d
