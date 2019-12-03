#!/usr/bin/env bash
set -x

REMOTE_TAG=$HOST/$REPOSITORY:$SERVICE-$BUILD_NUMBER

username=$(cat /var/lib/jenkins/workspace/docker-registry/username)
password=$(cat /var/lib/jenkins/workspace/docker-registry/password)

docker login -u $username -p $password hub.docker.com

docker build --rm --tag $REMOTE_TAG -f ci/Dockerfile .
docker push $REMOTE_TAG
docker rmi $REMOTE_TAG
