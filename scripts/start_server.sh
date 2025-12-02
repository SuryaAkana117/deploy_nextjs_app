#!/bin/bash
export NVM_DIR="$HOME/.nvm"
. "$NVM_DIR/nvm.sh"
cd /home/ec2-user/myapp

echo "Installing dependencies"
sudo npm install

echo "Building the Next.js app"
sudo npm run build

echo "Restarting PM2"
pm2 restart app1
