# Работа с Postgres

Установка и запуск контейнера

```bash
docker run -d --name tt-bd -p 5433:5432 -e POSTGRES_PASSWORD=test123 postgres:alpine
```
![Установка контейнера](img/image.png)

Вход в базу данных контейнера

```bash
docker exec -it tt-bd psql -U postgres
```
![Вход в БД](img/image-1.png)

Получение списка Баз данных

```bash
\l
```
![списки](img/image-2.png)

Выход с контейнера баз данных

```bash
exit
```
![Выход](img/image-3.png)

Остановка и удаление контейнера

```bash
docker stop tt-bd && docker rm tt-bd
```
![Да](img/image-4.png)