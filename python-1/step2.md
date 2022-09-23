# Indentation
Dalam python tidak ada definisi block code seperti pada PHP atau Java yang berupa kurawal {}. Yang ada hanyalah tanda titik dua yang menandakan awal block code.

Contohnya seperti ini.
```sh
def hasil() :
    a = 1
    b = 2
    c = a + b
    print ("hasil a + b adalah" + c)
```{{execute}}

Jika tidak menggunakan indentasi, maka akan menimbulkan error.

```sh
def hasil() :
a = 1
b = 2
c = a + b
print ("hasil a + b adalah" + c)
```{{execute}}