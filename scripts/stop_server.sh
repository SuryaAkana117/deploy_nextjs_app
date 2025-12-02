#!/bin/bash
export NVM_DIR="$HOME/.nvm"
. "$NVM_DIR/nvm.sh"
cd /home/ec2-user/myapp
echo "Cleaning node_modules"
sudo rm -rf *

echo "Stopping PM2 app..."
pm2 stop app1 || true
