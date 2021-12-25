#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=nanodegreeproject4:latest

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username dockerjsb

# Step 3:
# Push image to a docker repository
docker tag nanodegreeproject4:latest dockerjsb/nanodegreeproimg:latest

docker push dockerjsb/nanodegreeproimg:latest
