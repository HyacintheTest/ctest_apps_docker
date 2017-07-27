docker-compose kill
docker stop $(docker ps -a -q)
docker-compose rm -f -v
docker rm $(docker ps -a -q)
docker rmi $(docker images -a -q) -f
docker-compose build
docker-compose up -d
docker ps
