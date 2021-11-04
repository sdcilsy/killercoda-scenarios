# Setup Java

Kita akan menggunakan `Java` versi 8 mengingat Hadoop dan Hive mensyaratkan hal itu.

Sudah disediakan Java 8, hal selanjutnya yang harus dilakukan adalah mengganti versi Java menjadi Java versi 8.
Setelah

`update-alternatives --set java /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java`{{execute}}

`export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre`{{execute}}

*Note: Jangan melanjutkan ke step 2 apabila belum mengeksekusi kedua command diatas!