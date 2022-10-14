#!/bin/bash

docker run --name juice-shop -d -p 3000:3000 bkimminich/juice-shop -e NODE_ENV=ctf