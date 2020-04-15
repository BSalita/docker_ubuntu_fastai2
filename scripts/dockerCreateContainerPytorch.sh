IMAGE=nvcr.io/nvidia/pytorch:20.02-py3
CONTAINER=fastai2
userID=$(id -u)
groupID=$(id -g)
sudo docker container ls -a
sudo docker stop $CONTAINER
sudo docker rm  $CONTAINER
sudo docker create \
    -it \
    --name $CONTAINER \
    --gpus all \
    --shm-size 1gb \
    --publish 8888:8888 \
    --user $userID:$groupID \
    --workdir "$HOME" \
    --volume "$HOME:$HOME" \
    --volume "/etc/group:/etc/group:ro" \
    --volume "/etc/passwd:/etc/passwd:ro" \
    --volume "/etc/shadow:/etc/shadow:ro" \
    $IMAGE \
    /bin/bash

sudo docker start $CONTAINER

sudo docker exec \
    -it \
    --user root \
    $CONTAINER \
    /bin/bash \
    -c "ls -l .. && chown $USER $HOME && chgrp $USER $HOME && ls -l .."

sudo docker stop $CONTAINER
