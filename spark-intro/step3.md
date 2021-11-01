# Spark Action

## Foreach

Fungsi foreach() menerapkan sebuah fungsi ke setiap elemen pada RDD.

`rdd = sc.parallelize([1, 2, 3, 4, 5]).foreach(lambda x: x + 1).collect()`{{execute}}

## Collect

Mengembalikan list yang berisikan semua element yang ada pada RDD.

`sc.parallelize([1, 2, 3, 4, 5]).collect()`{{execute}}

## Count

Mengembalikan jumlah elemen yang ada pada RDD.

`sc.parallelize([1, 2, 3, 4, 5]).count()`{{execute}}