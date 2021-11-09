# DDL (Data Definition Language)

Data Definition Language membantu Anda menentukan struktur atau skema database. Menggunakan DDL, kita bisa membuat, menghapus, mengubah, dan mengosongkan `database` maupun table. Pada DDL ini terdapat 4 `command` yaitu:
- CREATE
- ALTER
- RENAME
- TRUNCATE
- DROP

## CREATE

Digunakan untuk membuat user, tabel atau database baru. Silahkan mencoba query dibawah, setelah itu eksekusi dengan menekan ikon play pada menu atas, atau menggunakan tombol <kbd>F5</kbd>.

Syntax:

```
CREATE DATABASE DB_NAME;
CREATE TABLE TABLE_NAME (COLUMN_NAME DATATYPES[,....]);
``` 
For example:
```
Create database bigdata9;
Create table siswa(nama varchar(25));
CREATE USER udin WITH PASSWORD 'mel4yu90';
```

## ALTER

Digunakan untuk mengubah struktur `database`. Biasanya, perintah ALTER digunakan untuk menambah atribut baru atau memodifikasi karakteristik beberapa atribut yang ada. 

Sintaks Umum :
```
ALTER TABLE table_name ADD (column_name1 data_type (size), column_name2 data_type (size),… .., column_nameN data_type (size));

ALTER TABLE table_name ALTER COLUMN column_name TYPE column_definition;

```
Contoh :
```
ALTER TABLE siswa ADD alamat varchar(100);
ALTER TABLE siswa ALTER COLUMN nama TYPE varchar(50);
```

## RENAME

Digunakan untuk mengganti nama tabel dan nama kolom.

Sintaks Umum:
```
ALTER TABLE table_name
  RENAME TO new_table_name;
```
Contoh:
```
ALTER TABLE siswa RENAME TO student;
```

## TRUNCATE

Digunakan untuk menghapus semua baris dari tabel dan membebaskan ruang yang berisi tabel.

Sintaks Umum:
```
TRUNCATE table_name;
```
Contoh:
```
TRUNCATE student;
```

## DROP

Digunakan untuk menghapus seluruh tabel dari database dan semua data yang tersimpan di dalamnya.

Sintaks Umum:
```
DROP TABLE table_name;
```
Contoh:
```
DROP TABLE Siswa;
```