#!/bin/bash

# Source the NVM environment
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads NVM
sudo chown -R ubuntu:ubuntu /home/ubuntu/deploy_nextjs_app

cd /home/ubuntu/deploy_nextjs_app
git pull origin master
#nvm use v16

# Source Yarn environment (if installed globally)
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

yarn install &&
yarn build &&
pm2 restart next_hello_world_app
