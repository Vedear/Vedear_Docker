# Пример работы Adminer

## Установка Adminer

```
docker run -d \
  --name adminer \
  -p 8084:8080 \
  adminer:latest
```
![alt text](img/image.png)

## Проверка работы

```
http://localhost:8084/
```
![alt text](img/image-1.png)