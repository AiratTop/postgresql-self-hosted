#!/bin/bash

date

# Pull latest version
docker compose pull

# Stop and remove older version
docker compose down

# Start the container
docker compose up -d