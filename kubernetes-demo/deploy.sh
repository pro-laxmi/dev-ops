#!/bin/bash
set -e                         # Exit immediately if any command fails

NAME="kubernetes-demo-api"
USERNAME="prolaxmi"

IMAGE="$USERNAME/$NAME:latest"

echo "Building Docker image..."
docker build -t "$IMAGE" .     # ❗ build context (.) was missing

echo "Pushing image to Docker Hub..."
docker push "$IMAGE"           # ❗ missing closing quote fixed

echo "Applying Kubernetes manifests..."
kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml

echo "Getting pods..."
kubectl get pods

echo "Getting services..."
kubectl get services

echo "Fetching the main service..."
kubectl get service $NAME-service
# ❗ must match Service metadata.name exactly