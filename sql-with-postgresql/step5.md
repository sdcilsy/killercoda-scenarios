# Quiz

Kali ini untuk memantapkan pemahaman tentang SQL pada PostgreSQL, kami telah menyiapkan beberapa soal yang nantinya perserta bisa jawab.

1. Buatlah sebuah database bernama `casablanca_motor`.
2. Buatlah sebuah tabel dengan nama `sparepart` dengan kolom sebagai berikut.
   
| Kolom | Tipe Data  | Size  |
| :-----: | :-: | :-: |
| id | int | - |
| nama | varchar | 50 |
| harga | int | 10 |
| stok | int | 5 |

3. Masukan beberapa data berikut secara bersamaan.

```
id : 1
nama : mesin
harga : 1.000.000
stok : 4
```
```
id : 2
nama : busi
harga : 50.000
stok : 20
```
```
id : 3
nama : klakson
harga : 30.000
stok : 10
```
```
id : 4
nama : kampas rem
harga : 160.000
stok : 6
```
```
id : 5
nama : oli
harga : 40.000
stok : 19
```
4. Tampilkan semua data
5. Tampilkan data yang memiliki harga diatas 60.000
6. Ubah data yang memiliki `id` 3 menjadi berikut.

```
harga : 50.000
stok : 7
```
7. Hapus data yang memiliki `id` 5.
8. Buat user dengan informasi berikut:
```
Nama : agus
Password : agu5g4nt3n6
```
9. Berikan semua hak akses database `casablanca_motor` pada user `agus`.
10. Kosongkan tabel sparepart.