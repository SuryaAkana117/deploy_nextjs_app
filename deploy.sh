#!/bin/bash

# Navigate to your Next.js application directory
cd /home/ubuntu/deploy_nextjs_app

# Update the PATH to include NVM and Yarn (adjust paths as necessary)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
export PATH="$NVM_DIR/versions/node/$(nvm current)/bin:$PATH"  # This ensures the correct Node.js version is used
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# Change ownership of the entire application directory to your user (replace 'youruser' with your actual username)
sudo chown -R ubuntu:ubuntu /home/ubuntu/deploy_nextjs_app

# Pull the latest code from your repository
git pull origin master

# Activate Node.js version using NVM
nvm use v16

# Install dependencies and build the Next.js app
yarn install
yarn build

# Change ownership of the .next directory to the user (replace 'youruser' with your actual username)
sudo chown -R ubuntu:ubuntu /home/ubuntu/deploy_nextjs_app/.next

# Restart your Next.js app using PM2
pm2 restart next_hello_world_app
