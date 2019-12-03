#!/usr/bin/env bash
set -x

REMOTE_TAG=$HOST/$REPOSITORY:$SERVICE-$BUILD_NUMBER

username=$(cat /var/lib/jenkins/workspace/docker-registry/username)
password=$(cat /var/lib/jenkins/workspace/docker-registry/password)

sudo docker login -u $username -p $password hub.docker.com

sudo docker build --rm --tag $REMOTE_TAG -f ci/Dockerfile .
sudo docker push $REMOTE_TAG
sudo docker rmi $REMOTE_TAG
