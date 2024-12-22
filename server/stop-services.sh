#!/bin/bash
echo "Stopping and removing Docker containers..."

# Stop and remove containers
docker compose down

# Remove the Docker image
echo "Removing Docker image: user-service"
docker image rm -f user-service

if [ $? -eq 0 ]; then
    echo "Services stopped and images removed successfully!"
else
    echo "Warning: Docker image 'user-service' could not be removed."
fi
