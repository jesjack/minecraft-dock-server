sudo docker exec mc rcon-cli stop
sudo docker container stop $(sudo docker ps --filter "name=mc" -qa)
sudo docker container rm $(sudo docker ps --filter "name=mc" -qa)
sudo docker run -d -it -p 25565:25565 -e EULA=TRUE -e MEMORY=2G -e MAX_TICK_TIME=-1 -e ENABLE_AUTOPAUSE=TRUE -v /home/jesjack25_03/minecraft-dock-server/doc-serv-1:/data --name mc itzg/minecraft-server
# sudo notify-send 'Servidor de minecraft' 'Se a reinstalado el contenedor de minecraft "mc"'
