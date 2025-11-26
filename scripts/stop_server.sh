#!/bin/bash
cd /home/ec2-user/myapp

echo "Stopping PM2 app..."
pm2 stop app1 || true
