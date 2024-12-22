#!/bin/bash
echo "Starting and rebuilding Docker containers..."

# Build and start the services
docker compose up -d --build

# Check the status of running containers
if [ $? -eq 0 ]; then
    echo "Docker containers started successfully!"
else
    echo "Error: Failed to start Docker containers."
    exit 1
fi
