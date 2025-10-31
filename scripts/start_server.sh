#!/bin/bash
set -e

cd /home/ubuntu/my-node-app

echo "Starting app with PM2..."
pm2 start index.js --name "my-node-app"

