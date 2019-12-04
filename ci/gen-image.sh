#!/usr/bin/env bash
set -x

REMOTE_TAG=$HOST/$REPOSITORY:$SERVICE-$BUILD_NUMBER


cat /var/lib/jenkins/workspace/docker-registry/password | sudo docker login --username bohenmian --password-stdin

sudo docker build --rm --tag $REMOTE_TAG -f ci/Dockerfile .
sudo docker push $REMOTE_TAG
sudo docker rmi $REMOTE_TAG
