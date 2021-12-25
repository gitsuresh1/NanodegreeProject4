#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub
echo "---------STARTING MINIKUBE -------------"
minikube start
echo "--------- MINIKUBE STARTED-------------"
# Step 1:
# This is your Docker ID/path
dockerpath=dockerjsb/nanodegreeproimg:latest
# Step 2
# Run the Docker Hub container with kubernetes
echo "---------DEPLOYING DOCKER IMAGE  -------------"
kubectl run nanodegreeproimg --image=$dockerpath --port=8080
echo "---------DOCKER IMAGE DEPLOYED SUCCESSFULLY -------------"
# Step 3:
# List kubernetes pods
echo "---------LISTING THE PODS  -------------"
kubectl get pods
echo "--------------------------- -------------"


# Step 4:
# Forward the container port to a host
echo "---------FORWARDING THE PORTS HOST:CONTAINER PORT MAPPING  -------------"
kubectl port-forward --address 0.0.0.0 pod/nanodegreeproimg 8080:80

