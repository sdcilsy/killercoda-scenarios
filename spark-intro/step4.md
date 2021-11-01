# Word Count

Kali ini kita akan mengimplementasikan Transformation dan Action Spark untuk menghitung jumlah kata pada sebuah RDD.

Sudah disiapkan sebuah file bernama `input.txt` dengan isi berikut.

```
people are not as beautiful as they look, 
as they walk or as they talk.
they are only as beautiful  as they love, 
as they care as they share.
```

Lal kita akan menghitung dan mengelompokan kata yang sama.

## Create RDD

`inputfile = sc.textFile("input.txt")`{{execute}}

## Split words

Tujuan kita adalah untuk menghitung kata-kata dalam file. Kita akan menggunakan flatMap() untuk membagi setiap baris menjadi kata-kata `flatMap(lambda line: line.split(" "))`.

Selanjutnya, membaca setiap kata sebagai sebuah `key` dengan `value` '1' `map(lambda word: (word, 1))` menggunakan fungsi map.

Terakhir, ketika ada kata/key yang sama, maka akan menambahkan value itu sendiri `reduceByKey(lambda a,b:a +b)`.

```sh
count = inputfile.flatMap(lambda line: line.split(" ")) \
.map(lambda word: (word, 1)) \
.reduceByKey(lambda a,b:a +b)
```{{execute}}

## Simpan Output

Selanjutnya kita akan menyimpan output tadi pada folder `output`

`counts.saveAsTextFile("output")`{{execute}}

Untuk melihat output tersebut, kita keluar dari Pyspark, lalu lihat folder `output`.

```sh
cd output
ls
```{{execute}}

