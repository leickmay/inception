sudo docker-compose -f srcs/docker-compose.yml down
sudo docker rmi -f $(sudo docker images -qa)
sudo docker rm -f $(sudo docker ps -qa)
sudo docker volume rm $(sudo docker volume ls -q)
sudo docker system prune -a --force
sudo rm -rf ../data/mariadb
sudo rm -rf ../data/wordpress
sudo mkdir ../data/mariadb
sudo mkdir ../data/wordpress

