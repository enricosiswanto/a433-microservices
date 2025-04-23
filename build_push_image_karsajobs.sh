#!/bin/bash

# Build image dari Dockerfile dengan tag sesuai format GitHub Packages
docker build -t ghcr.io/$GHCR_USERNAME/karsajobs:latest .

# Login ke GitHub Packages
echo $GHCR_PWD | docker login ghcr.io -u $GHCR_USERNAME --password-stdin

# Push image ke GitHub Packages
docker push ghcr.io/$GHCR_USERNAME/karsajobs:latest

