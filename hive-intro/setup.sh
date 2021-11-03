#!/bin/bash

### Test SSH

ssh localhost

### Download hadoop

wget https://downloads.apache.org/hadoop/common/hadoop-3.3.1/hadoop-3.3.1.tar.gz --no-check-certificate

tar xvf hadoop-3.3.1.tar.gz

### Create directory

mkdir /root/hadoop-3.3.1/tmpdata

mkdir -p /root/hadoop-3.3.1/dfsdata/namenode /root/hadoop-3.3.1/dfsdata/datanode

### Move preconfigured file

cp core-site.xml /root/hadoop-3.3.1/etc/hadoop
cp hdfs-site.xml /root/hadoop-3.3.1/etc/hadoop
cp mapred-site.xml /root/hadoop-3.3.1/etc/hadoop
cp yarn-site.xml /root/hadoop-3.3.1/etc/hadoop


### Set environment variable

export HADOOP_HOME=/root/hadoop-3.3.1
export HADOOP_INSTALL=$HADOOP_HOME
export HADOOP_MAPRED_HOME=$HADOOP_HOME
export HADOOP_COMMON_HOME=$HADOOP_HOME
export HADOOP_HDFS_HOME=$HADOOP_HOME
export YARN_HOME=$HADOOP_HOME
export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native
export PATH=$PATH:$HADOOP_HOME/sbin:$HADOOP_HOME/bin
export HADOOP_OPTS="-Djava.library.path=$HADOOP_HOME/lib/nativ"

export HDFS_NAMENODE_USER=root
export HDFS_DATANODE_USER=root
export HDFS_SECONDARYNAMENODE_USER=root
export YARN_RESOURCEMANAGER_USER=root
export YARN_NODEMANAGER_USER=root


### buat hadoop-env.sh
# echo 'export JAVA_HOME=${JAVA_HOME}' >> /root/hadoop-3.3.1/etc/hadoop/hadoop-env.sh
echo 'export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64' >> /root/hadoop-3.3.1/etc/hadoop/hadoop-env.sh

### Start Cluster

$HADOOP_HOME/bin/hdfs namenode -format

$HADOOP_HOME/sbin/start-dfs.sh

$HADOOP_HOME/sbin/start-yarn.sh