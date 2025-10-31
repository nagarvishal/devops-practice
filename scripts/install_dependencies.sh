#!/bin/bash
set -e

cd /home/ubuntu/my-node-app

echo "Updating packages..."
sudo apt-get update -y

echo "Installing Node.js dependencies..."
sudo npm install -g pm2
npm install

echo "Checking Nginx..."
sudo systemctl status nginx || sudo apt-get install nginx -y

echo "Reloading Nginx..."
sudo systemctl enable nginx
sudo systemctl restart nginx
