# Create RDD

Cara membuat RDD pada Spark terbilang cukup mudah. Ada 2 cara untuk membuat RDD ini. 
- Parallelizing
- External Dataset

## Parallelizing

Cara pertama adalah dengan cara parallelize koleksi data yang ada.

Contoh

```sh
data = [1, 2, 3, 4, 5]
distData = sc.parallelize(data)
```{{execute}}

## External Dataset

Kita bisa membuat RDD dari file CSV, JSON, atau lainnya.

```sh
distData2 = spark.read.csv('username.csv')
```{{execute}}