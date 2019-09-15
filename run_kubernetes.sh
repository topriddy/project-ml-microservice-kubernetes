#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="topriddy/udacity-ml-app"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udacity-ml-app --image=topriddy/udacity-ml-app


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl expose deployment/udacity-ml-app --type="NodePort" --port 80
