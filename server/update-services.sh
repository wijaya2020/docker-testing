#!/bin/bash
echo "Stashing local changes (if any)..."
git stash

echo "Pulling the latest code from GitHub..."
git pull origin main

if [ $? -eq 0 ]; then
    echo "Code pulled successfully!"
else
    echo "Error: Failed to pull the latest code from GitHub."
    exit 1
fi

echo "Reapplying stashed changes (if any)..."
git stash pop || echo "No stashed changes to apply."

# Restart services after updating the code
echo "Rebuilding and restarting services..."
./stop-services.sh
./start-services.sh

echo "Update process completed!"

