#!/bin/bash

docker run --name juice-shop -d -p 3000:3000 -e NODE_ENV=ctf bkimminich/juice-shop