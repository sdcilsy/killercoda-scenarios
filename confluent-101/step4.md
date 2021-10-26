# Create and Write to a Stream and Table using ksqlDB


## Create Streams and Tables

Pada langkah ini, kita akan menggunakan ksqlDB untuk membuat `stream` untuk topic `pageviews` dan `table` untuk topic `users`. Untuk bahan bacaan, silahkan mengunjungi [dokumentasi ksqlDB](https://docs.ksqldb.io/en/latest/reference/).

Untuk membuat `stream` & `table` ini, kita masuk ke tab `ksqlDB` yang ada dibagian kiri. Lalu klik aplikasi ksqlDB yang secara default bernama `ksqldb1`.

Untuk membuat `stream`, kita bisa membuatnya dengan `query` berikut.

`CREATE STREAM pageviews WITH (KAFKA_TOPIC='pageviews', VALUE_FORMAT='AVRO');`{{copy}}

Paste query tadi ke tab `Editor` lalu jalankan query dengan klik `Run Query`.

Lalu untuk membuat `table` cara yang digunakan kurang lebih sama dengan membuat `stream` namun `query` nya saja yang berbeda.

`CREATE TABLE users (id VARCHAR PRIMARY KEY)
  WITH (KAFKA_TOPIC='users', VALUE_FORMAT='AVRO');`{{copy}}

## Write Query

Setelah kita membuat `stream` & `table`, kita juga bisa melakukan query terhadapnya. Misalnya query ksqlDB select, insert, dan lain lain. Lihat kembali [dokumentasi ksqlDB](https://docs.ksqldb.io/en/latest/reference/) sebagai referensi.

Misalnya kita ingin melihat 3 data kolom `pageid` pada topic `pageviews` terkini.

Pertama tama, kita atur dulu property `auto.offset.reset` yang berada dibawah editor menjadi `earliest`.

Lalu kita gunakan query berikut.

`SELECT pageid FROM pageviews EMIT CHANGES LIMIT 3;`{{copy}}
