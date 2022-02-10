# https://youtu.be/n9uCgUzfeRQ?t=5340

choco install make



## CREATE IMAGES
docker build .
-t #name <!-- задает имя образу  -->
-t #name:#tag <!-- задает тег  -->

## IMAGES
docker images  <!-- список images (аналог docker image ls) -->
docker rmi #IMAGEID1 #IMAGEID2 <!-- удаление images  -->
docker image prune <!-- удаление всех не используемых images  -->

## CONTAINERS
docker ps <!-- список запущенных контейнеров  -->
docker ps -a <!-- список всех контейнеров  -->
docker container prune <!-- удалить все контейнеры -->
docker rm #id #id ... <!-- удалить контейнер -->
docker run "#IMAGEID || name" <!--  запуск контейнера по id или имени  -->
docker run "#IMAGEID || name":#tag <!-- запуск контейнера с указанием тега   -->
-it <!-- запуск интерактивной консоли  -->
-p 3000:3000 <!-- первый порт локальный, второй внутри контейнера>
-d <!-- флаг позволяет продолжить работать с консолью>
--name  <!-- задает имя контейнеру>
--rm  <!-- автоматическое удаление контейнера после остановки>

.exit <!-- выход из интерактивной консооли -->

## VOLUMES
docker volume ls <!-- список созданных volumes  -->
docker volume rm #name <!-- удалить volume по названию  -->
docker volume prune <!-- удалить все не используемые volume  -->
docker run -v #name:/app/data <!-- создать именованный -->
docker run -v /app/data <!-- создать анонимный -->
docker volume create #name <!-- -->
docker volume inspect #name



docker start 56fa4e1cc121
docker stop 56fa4e1cc121

docker attach 85eaab3aa2a9 <!-- ??? -->
docker logs #ContainerID <!-- выводит логи контейнера -->

docker tag imgdock:new seoresait/imgdock:new2 <!-- клонирование image c переименованием -->
docker push seoresait/imgdock:new
docker pull seoresait/imgdock:new


<!-- НАСТРОЙКА ПОРТОВ  -->
docker run -d -p 3000:80 -e PORT=80  --rm --name imgdockcont imgdock:env
docker run -d -p 80:4200 --env-file ./config/.env --rm --name imgdockcont imgdock:env