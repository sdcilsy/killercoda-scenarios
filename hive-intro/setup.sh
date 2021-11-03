#!/bin/bash

wget https://downloads.apache.org/hadoop/common/hadoop-3.3.1/hadoop-3.3.1.tar.gz --no-check-certificate


tar xvf hadoop-3.3.1.tar.gz

export HADOOP_HOME=/root/hadoop-3.3.1
export HADOOP_INSTALL=$HADOOP_HOME
export HADOOP_MAPRED_HOME=$HADOOP_HOME
export HADOOP_COMMON_HOME=$HADOOP_HOME
export HADOOP_HDFS_HOME=$HADOOP_HOME
export YARN_HOME=$HADOOP_HOME
export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native
export PATH=$PATH:$HADOOP_HOME/sbin:$HADOOP_HOME/bin

export HDFS_NAMENODE_USER=root
export HDFS_DATANODE_USER=root
export HDFS_SECONDARYNAMENODE_USER=root
export YARN_RESOURCEMANAGER_USER=root
export YARN_NODEMANAGER_USER=root
#export HADOOP_OPTS"-Djava.library.path=$HADOOP_HOME/lib/nativ"

mkdir /root/hadoop-3.3.1/tmpdata

### siapin file /root/hadoop-3.3.1/etc/hadoop/core-site.xml

echo 'export JAVA_HOME=$JAVA_HOME' >> /root/hadoop-3.3.1/etc/hadoop/hadoop-env.sh