#!/bin/bash
set -e

cd /home/ubuntu/my-node-app

echo "Starting app with PM2..."
pm2 start index.js --name "my-node-app"

echo "Saving PM2 process list..."
pm2 save

echo "Restarting PM2 service..."
pm2 startup systemd -u ubuntu --hp /home/ubuntu
