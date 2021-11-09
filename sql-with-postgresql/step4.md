# DCL (Data Control Language)

DCL atau Data Control Language biasanya digunakan untuk mengubah izin akses, menetapkan peran, dan masalah lain yang terkait dengan kontrol database. Apa saja yang menmenggunakan DCL?
- GRANT
- REVOKE

## GRANT

Digunakan untuk memberikan hak akses pengguna ke database. Biasanya command ini digunakan pada user yang sudah dibuat terlebih dahulu menggunakan CREATE. Dokumentasi mengenai privileges ada [di sini](https://www.postgresql.org/docs/14/sql-grant.html). 

Sintaks Umum:
```
GRANT object_privileges ON table_name TO user_name1, user_name2, ....., User_nameN;
```

Contoh:

Ini akan memungkinkan pengguna untuk hanya menjalankan operasi SELECT dan UPDATE pada tabel student.
```
GRANT SELECT, UPDATE ON student TO udin;
```{{execute}}

Mengizinkan pengguna menjalankan semua perintah di database bigdata7.
```
GRANT ALL PRIVILEGES ON DATABASE bigdata7 TO udin;
```{{execute}}

## REVOKE

Digunakan untuk mengambil kembali/mencabut izin yang diberikan kepada pengguna.

Sintaks Umum:
```
REVOKE object_privileges ON table_name FROM user1, user2,… userN;
```
Contoh:
```
REVOKE ALL PRIVILEGES ON DATABASE bigdata7 FROM udin;
```{{execute}}