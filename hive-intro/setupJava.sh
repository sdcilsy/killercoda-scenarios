#!/bin/bash

### Setup Java 8

apt-get update

apt-get install openjdk-8-jdk -y

### Update Java
echo "Hellow"

update-alternatives --set java /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java

export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre