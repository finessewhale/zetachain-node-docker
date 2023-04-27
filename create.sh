#!/bin/bash
#
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin wget

wget -i filesList -P ./nodeFiles/
docker compose up  -d
