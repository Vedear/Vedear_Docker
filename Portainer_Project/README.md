# Пример работы Portainer

## Установка Portainer

```
docker run -d \
  --name portainer \
  -p 9000:9000 \
  -p 9443:9443 \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v portainer_data:/data \
  --restart unless-stopped \
  portainer/portainer-ce:latest
```
![alt text](img/image.png)

## Проверка подключения

```
http://localhost:9000/#!/home
```
![alt text](img/image-1.png)