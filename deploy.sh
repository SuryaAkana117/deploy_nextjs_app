#!/bin/bash





cd /home/ubuntu/deploy_nextjs_app
sudo chown -R ubuntu:ubuntu /home/ubuntu/deploy_nextjs_app
git pull origin master
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads NVM
nvm use v16

# Source Yarn environment (if installed globally)
#export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

yarn install &&
yarn run build &&
pm2 restart next_hello_world_app
