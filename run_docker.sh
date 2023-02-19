#!/usr/bin/bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build -t makafanpeter/house-price-prediction-api .
# Step 2:
# List docker images
docker image ls
# Step 3:
# Run flask app
docker run -p 8000:80 --name house-price-prediction-api makafanpeter/house-price-prediction-api
