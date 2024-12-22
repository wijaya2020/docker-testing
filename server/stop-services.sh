#/bin/sh
echo "Stop and remove Docker containers..."
docker compose stop
docker compose down

echo "Remove Docker image..."
docker image rm user-service

echo "Services stop completed!"