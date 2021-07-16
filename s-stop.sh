sudo docker exec mc rcon-cli stop
sudo docker container stop $(sudo docker ps --filter "name=mc" -qa)