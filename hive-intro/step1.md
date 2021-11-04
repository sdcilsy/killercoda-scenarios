`apt-get update`{{execute}}

`apt-get install openjdk-8-jdk -y`{{execute}}

`update-alternatives --set java /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java`{{execute}}

`export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre`{{execute}}