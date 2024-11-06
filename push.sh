#!/bin/bash
# tag and push to dockerhub
set -e
DOCKER_RUN_IMAGE=tedleyem/nagios
DOCKER_TAG_VERSION=4.5.7

docker build -t ${DOCKER_RUN_IMAGE}:${DOCKER_TAG_VERSION} .

docker tag nagios:4.5.7 ${DOCKER_RUN_IMAGE}:${DOCKER_TAG_VERSION}
docker tag ${DOCKER_RUN_IMAGE}:${DOCKER_TAG_VERSION} ${DOCKER_RUN_IMAGE}:latest
docker push ${DOCKER_RUN_IMAGE}:${DOCKER_TAG_VERSION}
docker push ${DOCKER_RUN_IMAGE}:latest
