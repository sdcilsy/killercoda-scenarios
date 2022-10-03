## Setup Cluster

Cluster ini berisikan 2 broker dengan masing masing zookeeper (total ada 4 service). Cluster ini dibangun diatas service docker.

Tunggu beberapa saat hingga proses setup cluster selesai.

## Check Cluster ID

Pengecekan ini dilakukan untuk melihat output cluster dari masing masing broker kafka. Output yang diekspektasi harusnya sama.

Untuk mengecek cluster id dari kafka-1, kita menggunakan perintah dibawah. 

`docker-compose exec kafka-1 kafka-cluster cluster-id --bootstrap-server kafka-1:9092`{{execute}}

Selanjutnya untuk kafka-2, kita menggunakan perintah dibawah. 

`docker-compose exec kafka-2 kafka-cluster cluster-id --bootstrap-server kafka-2:9092`{{execute}}

Output yang ditampilkan kedua perintah harusnya sama.