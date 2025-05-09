#!/bin/bash

# Build image dari Dockerfile dengan tag GitHub Packages
docker build -t ghcr.io/$GHCR_USERNAME/shipping-service:latest .

# Login ke GitHub Packages
echo $GHCR_PWD | docker login ghcr.io -u $GHCR_USERNAME --password-stdin

# Push image ke GitHub Packages
docker push ghcr.io/$GHCR_USERNAME/shipping-service:latest
