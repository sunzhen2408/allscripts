#!/bin/bash
cd /root/zhenlingGateway/
pm2 start build/gateway.js
cd /root/zhenlingFrameworknew/
pm2 start ./bin/www
echo "pm2 start successful"
pm2 save
pm2 startup
echo "pm2 save"
