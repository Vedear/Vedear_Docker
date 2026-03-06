# Пример работы MySQL

## Установка MySQL

```
docker run -d \
  --name my-mongo \
  -p 27017:27017 \
  mongo:latest
```
![alt text](img/image.png)

## Подключение к базе данных

```
docker exec -it my-mongo mongosh
```
![alt text](img/image-1.png)

## Проверка работы

```
show dbs
```
![alt text](img/image-2.png)

## Выход

```
exit
```