# docker_ubuntu_fastai2
Example scripts to create a GPU enabled docker container on Ubuntu. The scripts build a container for fastai2. fastai refers to both courseware and a machine learning library. The fastai library is pytorch based.

Being new to docker, I'm approaching the problem of creating an Ubuntu docker container for fastai by writing a bunch of shell scripts. The scripts are a work-in-progress.

Goals:
1. Scripts will allow easy installation of fastai onto an Ubuntu based docker system.
2. Scripts will enable quick and easy changes to configs (docker, conda, pip, fastai, my code) without messing up the base system.
3. The docker container will have GPU access with similar performance to native.
4. The docker container will have rwx access to my development volume allowing easy development from within and between docker containers.
5. Any project work done within a container will be easy to backup.
6. The docker container will use my native userid and group for seamless non-root permissions access.
7. The scripts will be serially re-runable and make minimal assumptions about state.
8. Docker related scripts will eventually be made into a dockerfile.
