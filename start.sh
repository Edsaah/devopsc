#!/bin/bash
set +x
IP=`curl 'ifconfig.me'`
echo "--------------------------"
echo "$IP"
sed "s/localhost/$IP/g" ./frontend/src/config.js > frontend.config.js
sed "s/localhost/$IP/g" ./backend/config.js > backend.config.js
mv frontend.config.js ./frontend/src/config.js 
mv backend.config.js ./backend/config.js
docker-compose  up --build -d 

echo "--------------------------"