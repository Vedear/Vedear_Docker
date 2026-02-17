# Начало работы с Apache

## Проверка Docker'а

```bash
docker version
```
![Версия докера](screenshots/mintty_4ieNxeHAiu.png)

## Удаление старых контейнеров

```bash
docker ps -a

docker stop $(docker ps -q)

docker container prune
```

![Удаление контейнеров](screenshots/mintty_YvPYDvbo2D.png)

## Поиск, установка и запуск Apache с Debian

```bash
docker run -d --name my-apache -p 8081:80 httpd
```

![Установка и запуск Apache](screenshots/image.png)
![Проверка запуск](screenshots/mintty_8PrihgFigN.png)

## Проверка в браузере

```
localhost:8081
```

![Проверка в браузере](screenshots/chrome_S1a7xDYeiP.png)