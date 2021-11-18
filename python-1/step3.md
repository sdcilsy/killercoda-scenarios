
# Comment
Comment adalah suatu statement yang tidak akan dieksekusi oleh interpreter. Gunanya adalah untuk memberi informasi mengenai suatu blok program atau sengaja agar interpreter tidak mengeksekusi statement.

Beragam cara membuat comment pada Python

Pertama dengan karakter hash (#)

```sh
# ini komentar
print("hello!")
# ini juga komentar
```{{execute}}

Kedua dengan karakter quotes (') & (")

```sh
'''
ini comment
sangat panjang
sampai 3 line
'''
print("Hello!")
```
`cat comm1.py`{{execute HOST2}}
`python comm1.py`{{execute HOST2}}


```sh
"""
ini comment
sangat panjang
sampai 3 line
"""
print("Hello!")
`cat comm2.py`{{execute HOST2}}
`python comm2.py`{{execute HOST2}}