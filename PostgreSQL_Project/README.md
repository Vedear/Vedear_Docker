# Пример работы MySQL

## Установка MySQL

```
docker run -d \
  --name my-postgres \
  -p 5432:5432 \
  -e POSTGRES_PASSWORD=mysecretpassword \
  postgres:alpine
```
![alt text](img/image.png)

## Подключение к базе данных

```
docker exec -it my-postgres psql -U postgres
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