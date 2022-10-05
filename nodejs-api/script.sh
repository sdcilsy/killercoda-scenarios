#!/bin/bash

curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash - 
sudo apt-get install -y nodejs

git clone https://github.com/sdcilsy/nodejs_api.git

cd nodejs_api 

node server.js

docker run --name mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=nodejs-api -d mysql:latest -v /root/dump.sql:/docker-entrypoint-initdb.d/dump.sql