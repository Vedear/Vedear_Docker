# Пример работы Jira

## Установка Jira

```
docker run -d --name jira -p 2990:8080 atlassian/jira-software:latest
```
![alt text](img/image-1.png)

## Проверка логов установки

```
http://localhost:158/
```
![alt text](img/image.png)

## Проверка работы

```
http://localhost:2990/
```
![alt text](img/image-2.png)