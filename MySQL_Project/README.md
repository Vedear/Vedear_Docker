# Пример работы MySQL

## Установка MySQL

```
docker run -d \
  --name my-mysql \
  -p 3306:3306 \
  -e MYSQL_ROOT_PASSWORD=rootpassword \
  -e MYSQL_DATABASE=mydb \
  -e MYSQL_USER=user \
  -e MYSQL_PASSWORD=password \
  mysql:8
```
![alt text](img/image.png)

## Подключение к базе данных

```
docker exec -it my-mysql mysql -u root -p
```
![alt text](img/image-1.png)

## Проверка работы

```
SELECT version();
```
![alt text](img/image-2.png)

## Выход

```
exit
```