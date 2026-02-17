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

## Проверки Docker и Apache

```bash
docker stats
```
![Статы](screenshots/mintty_La7VXnkt0r.png)

```bash
curl http://localhost:8081
```
![Проверка в консоли](screenshots/mintty_dNEPwF5fod.png)

```bash
docker inspect my-apache
```
![Подробности контейнера 1](screenshots/1mintty_wUEPkXeh9q.png)
![Подробности контейнера 2](screenshots/1mintty_k0TKwMqemu.png)
![Подробности контейнера 3](screenshots/1uMlnSXDf8M.png)
![Подробности контейнера 4](screenshots/1mintty_wsQkkcJSmH.png)

```bash
docker logs my-apache
```
![Логи контейнера](screenshots/mintty_cyIe4b0Gn6.png)

```bash
docker exec -it my-apache bash

cat /etc/os-release
```
![Вход в контейнер и получения сведений](screenshots/MwAQzOUsUr.png)

```bash
apt update && apt install -y fastfetch
```
![Установка Fastfetch](screenshots/mintty_OCLXJJQNn4.png)

```bash
fastfetch
```
![Вывод Fastfetch](screenshots/mintty_naxI0SFjN8.png)