#!/bin/bash
set -e

echo "Stopping existing application (if running)..."
pm2 stop all || true
pm2 delete all || true

echo "Cleaning up old deployment..."
sudo rm -rf /home/ubuntu/my-node-app/*
