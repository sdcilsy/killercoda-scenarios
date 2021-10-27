# Setup Kafka Connect

Pada langkah ini, kita menggunakan Kafka Connect untuk menjalankan `demo source connector` yang disebut `kafka-connect-datagen` yang membuat data sampel untuk topic `pageviews` dan `users`.

## Topic pageviews

Kita akan membuat `DatagenConnector` untuk topic `pageviews` terlebih dahulu.
1. Masuk ke tab `Connect` yang berada di panel kiri.
2. Klik `connect-default`.
3. Klik `Add connector` lalu pilih `DatagenConnector`.
4. Isikan informasi `DatagenConnector` seperti:
  ```
  Name: datagen-pageviews
  Key converter class: org.apache.kafka.connect.storage.StringConverter
  kafka.topic: pageviews
  max.interval: 100
  quickstart: pageviews
  ```
5. Klik `Next` lalu lihat konfigurasi connector yang sudah kita buat. Kurang lebih seperti ini.
```
{
  "name": "datagen-pageviews",
  "config": {
    "name": "datagen-pageviews",
    "connector.class": "io.confluent.kafka.connect.datagen.DatagenConnector",
    "key.converter": "org.apache.kafka.connect.storage.StringConverter",
    "kafka.topic": "pageviews",
    "max.interval": 1000,
    "quickstart": "pageviews"
  }
}
```
6. Lalu klik `Launch`.

Jika kita kembali ke tab `Topics` dan memilih topic `pageviews`, bisa kita lihat ada stream data dummy yang berlangsung.

## Topic pageviews

Lalu kita akan membuat `DatagenConnector` untuk topic kedua `users`. Cara yang digunakan juga tidak jauh berbeda, namun kali ini kita memvariasikan konfigurasinya.
1. Masuk ke tab `Connect` yang berada di panel kiri.
2. Klik `connect-default`.
3. Klik `Add connector` lalu pilih `DatagenConnector`.
4. Isikan informasi `DatagenConnector` seperti:
  ```
  Name: datagen-users
  Key converter class: org.apache.kafka.connect.storage.StringConverter
  kafka.topic: users
  max.interval: 1000
  quickstart: users
  ```
5. Klik `Next` lalu lihat konfigurasi connector yang sudah kita buat. Kurang lebih seperti ini.
```
{
  "name": "datagen-users",
  "config": {
    "name": "datagen-users",
    "connector.class": "io.confluent.kafka.connect.datagen.DatagenConnector",
    "key.converter": "org.apache.kafka.connect.storage.StringConverter",
    "kafka.topic": "users",
    "max.interval": 1000,
    "quickstart": "users"
  }
}
```
6. Lalu klik `Launch`.