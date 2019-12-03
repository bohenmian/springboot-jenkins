#!/usr/bin/env bash

set -x

cat ci/docker-compose.yml | sed "s/@@HOST@@/$HOST/g; s/@@REPOSITORY@@/$REPOSITORY/g; s/@@SERVICE@@/$SERVICE/g; s/@@VERSION@@/$BUILD_NUMBER/g;" > docker-compose.yml

sudo docker-compose up -d
