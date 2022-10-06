#!/bin/bash

curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash - 

sudo apt-get install -y nodejs </dev/null

docker run --name mysql -p 3306:3306 -d -e MYSQL_ROOT_PASSWORD=nodejs_api -e MYSQL_DATABASE=nodejs_api -e MYSQL_USER=nodejs_api -e MYSQL_PASSWORD=nodejs_api -v /root/dump.sql:/docker-entrypoint-initdb.d/dump.sql mysql:latest

npm install

node server.js