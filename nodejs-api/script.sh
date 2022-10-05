#!/bin/bash

curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash - 
sudo apt-get install -y nodejs

git clone https://github.com/sdcilsy/nodejs_api.git

cd nodejs_api 

npm install

node server.js

docker run --name mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=nodejs_api -e MYSQL_DATABASE=nodejs_api -e MYSQL_USER=nodejs_api -e MYSQL_PASSWORD=nodejs_api -d mysql:latest -v /root/dump.sql:/docker-entrypoint-initdb.d/dump.sql