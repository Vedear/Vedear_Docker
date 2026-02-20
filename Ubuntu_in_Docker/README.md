# Работа с Ubuntu в Docker

Удаление контейнеров

```bash
docker container prune
```
![Удаление контейнеров](img/image.png)

docker run -it --rm ubuntu:latest /bin/bash

Установка и запуск контейнера

```bash
docker run -it ubuntu:latest bash
```

![Поиск и установка](img/image-1.png)

Установка и проверка "curl"

```bash
apt update && apt install curl -y

curl --version
```

![Установка curl](img/image-2.png)
![Проверка curl](img/image-3.png)

Выход из контейнера

```bash
exit
```
![Выход](img/image-4.png)