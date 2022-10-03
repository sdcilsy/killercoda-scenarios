#!/bin/bash

ssh localhost

wget https://downloads.apache.org/hadoop/common/hadoop-3.3.1/hadoop-3.3.1.tar.gz --no-check-certificate

tar xvf hadoop-3.3.1.tar.gz

mkdir /root/hadoop-3.3.1/tmpdata

mkdir -p /root/hadoop-3.3.1/dfsdata/namenode /root/hadoop-3.3.1/dfsdata/datanode

apt-get update

apt-get install openjdk-8-jdk -y

echo "Hellow"

update-alternatives --set java /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java

export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre

mv core-site.xml /root/hadoop-3.3.1/etc/hadoop
mv hdfs-site.xml /root/hadoop-3.3.1/etc/hadoop
mv mapred-site.xml /root/hadoop-3.3.1/etc/hadoop
mv yarn-site.xml /root/hadoop-3.3.1/etc/hadoop

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

echo 'export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre' >> /root/hadoop-3.3.1/etc/hadoop/hadoop-env.sh

$HADOOP_HOME/bin/hdfs namenode -format

$HADOOP_HOME/sbin/start-dfs.sh

$HADOOP_HOME/sbin/start-yarn.sh

wget https://dlcdn.apache.org/hive/hive-3.1.2/apache-hive-3.1.2-bin.tar.gz

tar xvf apache-hive-3.1.2-bin.tar.gz

export HIVE_HOME="/root/apache-hive-3.1.2-bin"
export PATH=$PATH:$HIVE_HOME/bin

echo 'export HADOOP_HOME=/root/hadoop-3.3.1' >> /root/apache-hive-3.1.2-bin/bin/hive-config.sh

hdfs dfs -mkdir /tmp

hdfs dfs -chmod g+w /tmp

hdfs dfs -mkdir -p /user/hive/warehouse

hdfs dfs -chmod g+w /user/hive/warehouse

cp $HIVE_HOME/conf/hive-default.xml.template  $HIVE_HOME/conf/hive-default.xml