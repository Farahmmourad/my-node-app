#!/bin/bash

# Stop and remove the old container if it exists
docker stop my-node-app || true
docker rm my-node-app || true

# Pull the latest image from ECR
aws ecr get-login-password --region eu-central-1 | docker login --username AWS --password-stdin 010438507694.dkr.ecr.eu-central-1.amazonaws.com
docker pull 010438507694.dkr.ecr.eu-central-1.amazonaws.com/my-node-app:latest

# Run the new container
docker run -d --name my-node-app -p 80:3000 010438507694.dkr.ecr.eu-central-1.amazonaws.com/my-node-app:latest
