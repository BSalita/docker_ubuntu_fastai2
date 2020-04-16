CONTAINER=fastai2
sudo docker container ls -a
sudo docker start $CONTAINER
sudo docker exec -it \
    $CONTAINER /bin/bash -c $HOME/ai/fastai2/startJupyterNotebook.sh
sudo docker stop $CONTAINER
