# Setup Cluster

`Confluent` dapat di deploy menggunakan Docker.

Sekarang kita akan mendownload file `docker-compose.yaml` Confluent. Latest version yang digunakan saat ini adalah versi `6.2.1`.

`curl --silent --output docker-compose.yml \
  https://raw.githubusercontent.com/confluentinc/cp-all-in-one/6.2.1-post/cp-all-in-one/docker-compose.yml`{{execute}}

# Cluster Goes Up

Sekarang kita akan bangun cluster menggunakan perintah dibawah.

`docker-compose up -d`{{execute}}

# Go to Dashboard

Tunggu beberapa saat agar Cluster benar benar online. Lalu akses tab `Dashboard` yang berada disebelah tab `Terminal`. Mulai dari sekarang, sampai step terakhir, kita akan mengoperasikan `Confluent` melalui `Dashboard` ini.