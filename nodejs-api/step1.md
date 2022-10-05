# Excercise

Lakukan praktikum pada section pada sandbox yang sudah disediakan.

## POST

```
curl -d "first_name=sekolah&last_name=devops" -X POST http://localhost:3000/users
curl -d "first_name=andi&last_name=hermawan" -X POST http://localhost:3000/users
```{{execute}}


## GET

```
curl -X GET http://localhost:3000/users
```{{execute}}

```
curl -X GET http://localhost:3000/users/1
```{{execute}}

## PUT 

```
curl -d "user_id=1&last_name=fullstack" -X PUT http://localhost:3000/users
```{{execute}}

```
curl -X GET http://localhost:3000/users
```{{execute}}

## DELETE

```
curl -d "user_id=1" -X DELETE http://localhost:3000/users
```{{execute}}