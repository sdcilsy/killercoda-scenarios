# Spark Transform

## Map

Fungsi map mentransform tiap elemen RDD menjadi elemen baru.

```sh
data = [1, 2, 3, 4, 5]
rdd = sc.parallelize(data)
rdd.map(lambda x: (x + 2)).collect()
```{{execute}}

## Flatmap

Transformasi Spark flatMap() meratakan kolom RDD/DataFrame setelah menerapkan fungsi pada setiap elemen dan mengembalikan RDD/DataFrame baru.

```sh
rdd = sc.parallelize([2, 3, 4])
rdd.flatMap(lambda x: range(1, x)).collect()
```{{execute}}


## Reduce

Mengurangi elemen RDD ini menggunakan operator biner komutatif dan asosiatif yang ditentukan

```sh
from operator import add
sc.parallelize([1, 2, 3, 4, 5]).reduce(add)
```{{execute}}


## Filter

Fungsi filter() akan mengembalikan RDD yang sesuai dengan kondisi yang diberikan.

```sh
rdd = sc.parallelize([1, 2, 3, 4, 5])
rdd.filter(lambda x: x % 2 == 0).collect()
```{{execute}}


## Distinct

Fungsi distinct memungkinkan untuk mengembalikan value yang berbeda satu sama lain pada RDD. 

```sh
sc.parallelize([1, 1, 2, 3, 3, 2, 4]).distinct().collect()
```{{execute}}

Untuk melihat lebih banyak fungsi Transformasi RDD, coba kunjungi dokumentasi resminya di (sini)[https://spark.apache.org/docs/latest/rdd-programming-guide.html#transformations].

Dan sebagai tambahan, berikut (dokumentasi Pyspark)[https://spark.apache.org/docs/latest/api/python/reference/pyspark.html#rdd-apis].