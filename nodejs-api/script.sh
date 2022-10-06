#!/bin/bash

docker-compose up -d --build

sleep 20 

docker-compose restart web