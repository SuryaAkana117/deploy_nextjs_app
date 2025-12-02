#!/bin/bash
set -e

export NVM_DIR="$HOME/.nvm"
. "$NVM_DIR/nvm.sh"

APP_DIR="/home/ec2-user/myapp"
cd $APP_DIR

echo "Installing dependencies..."
npm install

echo "Building the Next.js app..."
npm run build

echo "Restarting PM2..."
pm2 restart app1