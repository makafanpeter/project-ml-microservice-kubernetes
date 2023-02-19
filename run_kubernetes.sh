#!/usr/bin/bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=makafanpeter/house-price-prediction-api

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run house-price-prediction-api-pod --image=$dockerpath:latest --port=80

# Step 3:
# List kubernetes pods
kubectl get pod

# Step 4:
# Forward the container port to a host
kubectl port-forward house-price-prediction-api-pod 8000:80