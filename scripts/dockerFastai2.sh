CONTAINER=fastai2
sudo docker container ls -a
sudo docker stop $CONTAINER
sudo docker start $CONTAINER
sudo docker exec -it $CONTAINER /bin/bash
sudo docker stop $CONTAINER
