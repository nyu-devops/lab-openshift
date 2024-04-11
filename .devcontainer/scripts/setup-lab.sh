#!/bin/bash
echo "Setting up Docker lab environment..."
docker pull quay.io/rofrano/python:3.11-slim
# docker run -d --name postgresql --restart always -p 5432:5432 -v postgres:/var/lib/postgresql/data postgres:alpine

echo Setting up registry.local...
sudo bash -c "echo '127.0.0.1    cluster-registry' >> /etc/hosts"

echo "Making git stop complaining about unsafe folders"
git config --global --add safe.directory /app

echo "Setup complete"
