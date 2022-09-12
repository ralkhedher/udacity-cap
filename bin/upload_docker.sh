#!/usr/bin/env bash

DOCKER_HUB_ID="reemalkhedher"

dockerpath="reemalkhedher/capstone"

# Step 2:
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login -u ${DOCKER_HUB_ID}
docker tag capstone $dockerpath

# Step 3:
# Push image to a docker repository
docker push ${dockerpath}
