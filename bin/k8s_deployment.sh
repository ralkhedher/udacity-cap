#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Set vars
DOCKER_HUB_ID="registry.hub.docker.com/reemalkhedher"
DOCKER_REPOSITORY="capstone"
DEPLOYMENT_NAME=${DOCKER_REPOSITORY}
CONTAINER_PORT=80
REPLICAS=4

dockerpath=${DOCKER_HUB_ID}/${DOCKER_REPOSITORY}
# dockerpath="reemalkhedher/capstone:v1.0"

# Run the Docker Hub container with kubernetes
kubectl create deployment ${DEPLOYMENT_NAME} --image=${dockerpath} --replicas=${REPLICAS} &&
    kubectl expose deployment/${DEPLOYMENT_NAME} --type="LoadBalancer" --port ${CONTAINER_PORT}

# List kubernetes resources
echo
echo "Listing deployments"
kubectl get deployments -o wide
echo
echo "Listing services"
kubectl get services -o wide
echo
echo "Listing pods"
kubectl get pods -o wide


