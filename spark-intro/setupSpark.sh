#!/bin/bash

wget https://downloads.apache.org/spark/spark-3.2.0/spark-3.2.0-bin-hadoop3.2.tgz

tar xvf spark-3.2.0-bin-hadoop3.2.tgz

mv spark-3.2.0-bin-hadoop3.2 /usr/local/spark

export PATH=$PATH:/usr/local/spark/bin