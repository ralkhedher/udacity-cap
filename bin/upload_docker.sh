#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`
DOCKER_HUB_ID="reemalkhedher"
# DOCKER_REPOSITORY="hello-app"
# VERSION="1.000"

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath="reemalkhedher/capstone:v1.0"

# Step 2:
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login -u ${DOCKER_HUB_ID}
docker tag capstone $dockerpath

# Step 3:
# Push image to a docker repository
docker push ${dockerpath}
