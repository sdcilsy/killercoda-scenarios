<!-- # Install Docker Compose

Remove current `docker`

`rm /usr/bin/docker*`{{execute}}

Get `docker-compose`

`sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose`{{execute}}

Set permissions

`sudo chmod +x /usr/local/bin/docker-compose`{{execute}}

Link to `/usr/bin`

`sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose`{{execute}}

Verify `docker-compose` sudah terinstall

`docker-compose version`{{execute}} -->

# Setup Cluster

`Confluent` dapat di deploy menggunakan Docker.

Sekarang kita akan mendownload file `docker-compose.yaml` Confluent. Latest version yang digunakan saat ini adalah versi `6.2.1`.

`curl -O https://raw.githubusercontent.com/confluentinc/cp-all-in-one/6.2.1-post/cp-all-in-one/docker-compose.yml`{{execute HOST2}}

# Cluster Goes Up

Sekarang kita akan bangun cluster menggunakan perintah dibawah.

`docker-compose up -d`{{execute HOST2}}

# Go to Dashboard

1. Tunggu beberapa saat agar Cluster benar benar online. 

2. Klik ikon (+) yang berada disebelah tab `Terminal Host 1` lalu pilih select `Port to view on host 2`. 

3. Akan ada tab baru muncul. Masukan port `9021` pada kolom sebelah `Display Port`. Jika masih ada tulisan `Unable to connect to Port 9021`, tunggu beberapa saat lagi kemudian klik `Try again` atau `Display Port`.
   
3. Mulai dari sekarang, sampai step terakhir, kita akan mengoperasikan `Confluent` melalui `Dashboard` ini.