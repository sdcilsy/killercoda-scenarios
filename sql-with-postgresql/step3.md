# DML (Data Manipulation Language)

DML atau Data Manipulation Language adalah perintah SQL yang digunakan untuk mengolah atau mengolah data dalam sebuah tabel. Apa saja yang termasuk DML ?

- SELECT
- INSERT
- UPDATE
- DELETE

## SELECT

Ini adalah kueri paling dasar dan paling umum digunakan dalam SQL. Ini digunakan untuk mengambil data dari tabel.

Sintaks Umum :
```
SELECT column_name FROM table_name;
```
Contoh :
```
SELECT nama FROM siswa;
```{{execute}}
Kita bisa mendapatkan seluruh data dari tabel tanpa menyebutkan kolomnya. Yaitu menggunakan karakter “*”.
```
SELECT * FROM siswa;
```{{execute}}

Kita dapat menggunakan klausa `WHERE` untuk menentukan kondisi/syarat. Misalnya kita ingin menampilkan data data yang mempunyai nilai lebih dari `80` dari kolom `nilai`.

```
SELECT * FROM siswa WHERE nilai > 80;
```

## INSERT

Digunakan untuk memasukkan data ke deretan tabel.

Sintaks Umum:
```
INSERT INTO table_name (column_name1, column_name2, ....., Column_nameN) VALUES (value1, value2, ...., valueN);
```
Atau
```
INSERT INTO table_name VALUES (value1, value2, ...., valueN);
```

Contoh:
```
INSERT INTO student (nama, alamat) VALUES ('Vijay', 'Bekasi');
INSERT INTO student VALUES ('Kipli', 'Bandung');
```{{execute}}

## UPDATE

Digunakan untuk mengubah atau memperbarui nilai kolom dalam tabel. Itu dapat memperbarui semua baris atau beberapa baris selektif dalam tabel.

Sintaks Umum:
```
UPDATE table_name SET column_name1 = value1, column_name2 = value2,….,column_nameN = valueN (for updating all rows)

UPDATE table_name SET column_name1 = value1, column_name2 = value2,….,column_nameN = valueN [WHERE CONDITION] (for updating particular rows)
```

Contoh :
```
UPDATE student SET nama = 'Andi' WHERE alamat = 'Bekasi';
```{{execute}}

## DELETE

Digunakan untuk menghapus satu atau lebih baris dari sebuah tabel.

Sintaks Umum:
```
DELETE FROM table_name; ( menghapus semua baris dari tabel )

DELETE FROM table_name WHERE some_condition; ( hapus hanya baris yang kondisinya benar )
```
Contoh :

```
DELETE FROM student WHERE nama = 'Kipli';
```{{execute}}