#!/bin/bash

curl https://gist.githubusercontent.com/sdcilsy/7030550f64cd87abf3d3e102fd0aa14e/raw/4d9003f9b2773334d1670839142a4e0c228ca0cb/kafka-topic-replication-cluster.yaml -o docker-compose.yaml

docker-compose up -d