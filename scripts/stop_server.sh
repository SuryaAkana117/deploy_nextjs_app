#!/bin/bash
set -e

export NVM_DIR="$HOME/.nvm"
. "$NVM_DIR/nvm.sh"

APP_DIR="/home/ec2-user/myapp"
cd $APP_DIR

echo "Stopping PM2 app..."
pm2 stop app1 || true

echo "SAFE CLEAN – removing only build output"
rm -rf node_modules .next dist build

echo "Stop script completed."

