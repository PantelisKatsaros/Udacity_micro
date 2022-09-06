#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=panteliskats/model_data_docker:latest

# Step 2
# Run the Docker Hub container with kubernetes
# Added minikube ssh docker pull because it was failing when executing kubectl directly (Status: ImagePullBackOff)
minikube ssh docker pull panteliskats/model_data_docker:latest
kubectl create deployment microservice --image=panteliskats/model_data_docker:latest

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment.apps/microservice --address 0.0.0.0 8000:80