#!/bin/bash
# build and run dockerfile
set -e
DOCKER_RUN_IMAGE=nagios

docker build -t "${DOCKER_RUN_IMAGE}" .
docker images && sleep 4
docker run -d --rm --name "${DOCKER_RUN_IMAGE}" -p 8080:80 -t "${DOCKER_RUN_IMAGE}"

