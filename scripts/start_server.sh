#!/bin/bash
cd /home/ec2-user/myapp

echo "Cleaning node_modules"
rm -rf node_modules

echo "Installing dependencies"
npm install

echo "Building the Next.js app"
npm run build

echo "Restarting PM2"
pm2 restart app1
