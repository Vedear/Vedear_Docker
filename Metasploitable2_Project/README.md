# Пример работы Metasploitable2

## Установка Metasploitable2

```
docker pull tleemcjr/metasploitable2
```
![alt text](img/image.png)

## Проверка работы

```
docker run --name metasploitable2 -it tleemcjr/metasploitable2:latest sh -c "/bin/services.sh && bash"
```
![alt text](img/image-1.png)

## Выход

```
exit
```

## Удаление

```
docker rmi tleemcjr/metasploitable2
```