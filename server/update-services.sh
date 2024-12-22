#!/bin/bash
echo "Stashing local changes..."
git stash

echo "Pulling latest code from GitHub..."
git pull origin main

echo "Reapplying stashed changes (if any)..."
git stash pop || echo "No stashed changes to apply."

echo "Rebuilding Docker containers..."
docker compose down
docker compose up -d --build

echo "Update process completed!"
