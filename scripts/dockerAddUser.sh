CONTAINER=fastai2
sudo docker container ls -a
sudo docker start $CONTAINER
sudo docker exec -it \
    --user root \
    $CONTAINER /bin/bash -c "ls -l .. && chown $USER $HOME && chgrp $USER $HOME && ls -l .."
sudo docker stop $CONTAINER
