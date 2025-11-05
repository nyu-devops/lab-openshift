#!/bin/bash
echo "**********************************************************************"
echo "Setting up OpenShift lab environment..."
echo "**********************************************************************\n"

echo "Pulling custom Python:3.12-slim image from quay.io..."
docker pull quay.io/rofrano/python:3.12-slim
# docker run -d --name postgresql --restart always -p 5432:5432 -v postgres:/var/lib/postgresql/data postgres:alpine

echo "Setting up registry.local..."
sudo bash -c "echo '127.0.0.1    cluster-registry' >> /etc/hosts"

echo "Making git stop complaining about unsafe folders"
git config --global --add safe.directory /app

echo "\n**********************************************************************"
echo "Setup complete"
echo "**********************************************************************"
