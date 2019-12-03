#!/usr/bin/env bash

set -e

cat ci/docker-compose.yml | sed "s/@@HOST@@/$HOST/g; s/@@REPOSITORY@@/$REPOSITORY/g; s/@@SERVICE@@/$SERVICE/g; s/@@VERSION@@/$BUILD_NUMBER/g;" > docker-compose.yml

sudo docker-compose up -d
