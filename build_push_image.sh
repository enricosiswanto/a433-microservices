#!/bin/bash

# Set nama image dan versi
IMAGE_NAME=item-app
TAG=v1
GHCR_USERNAME=enricosiswanto  # Set username GitHub
GHCR_IMAGE=ghcr.io/$GHCR_USERNAME/$IMAGE_NAME:$TAG

# Build Docker image
docker build -t $IMAGE_NAME:$TAG .

# Lihat daftar image yang sudah dibuat
docker images

# Tag image agar sesuai dengan format GitHub Packages (GitHub Container Registry)
docker tag $IMAGE_NAME:$TAG $GHCR_IMAGE

# Login ke GitHub Container Registry
echo "Masukkan Personal Access Token (PAT) GitHub:"
read -s PAT
echo $PAT | docker login ghcr.io -u $GHCR_USERNAME --password-stdin

# Push image ke GitHub Packages
docker push $GHCR_IMAGE
