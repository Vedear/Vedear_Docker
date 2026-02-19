# Начало работы с cAdvisor

## Проверка Docker'а

```bash
docker version
```
![Версия докера](img/image.png)

## Удаление старых контейнеров

```bash
docker ps -a

docker container prune
```

![Удаление контейнеров](img/image-1.png)

## Поиск, установка и запуск cAdvisor

```bash
docker run -d --name cadvisor -p 8083:8080 --restart always gcr.io/cadvisor/cadvisor:latest

docker ps -a
```

![Установка и запуск cAdvisor](img/image-2.png)
![Проверка запуск](img/image-3.png)

## Проверка в браузере

```
localhost:8083
```

![Проверка в браузере](img/image-4.png)

## Проверки Docker и cAdvisor

```bash
docker stats
```
![Статы](img/image-5.png)

```bash
curl http://localhost:8083
```
![Проверка в консоли](img/image-6.png)

```bash
docker inspect cadvisor
```
![Подробности контейнера 1](img/image-7.png)
![Подробности контейнера 2](img/image-8.png)
![Подробности контейнера 3](img/image-9.png)
![Подробности контейнера 4](img/image-10.png)
![Подробности контейнера 4](img/image-11.png)
```bash
docker logs cadvisor
```
![Логи контейнера](img/image-12.png)