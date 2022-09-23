## Create Topic

Sesuai pada modul, kita akan membuat sebuah topic yang memiliki `--replication-factor 2`.

Karena kita mempunyai sebuah Cluster, maka apa yang kita buat di `kafka-1` akan terlihat juga di `kafka-2`. Berarti kita bebas memilih membuat topic di `kafka-1` atau `kafka-2`. Misalnya kasus kali ini kita akan membuatnya di `kafka-1`.

`docker-compose exec kafka-1 kafka-topics --create --bootstrap-server kafka-1:9092 --replication-factor 2 --partitions 2 --topic Topic-X`{{execute}}

## List Topics

Karena kita membuat topic di `kafka-1`, agar adil, kita akan me-list topic di `kafka-2`. 

`docker-compose exec kafka-2 kafka-topics --list --bootstrap-server kafka-2:9092`{{execute}}