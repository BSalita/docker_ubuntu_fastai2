# docker_ubuntu_fastai2
Example scripts to create a GPU enabled docker container on Ubuntu. The scripts build a container for fastai2 courseware.

Being new to docker, I'm approaching the problem of creating an Ubuntu docker container for fastai by writing a bunch of shell scripts. The scripts are a work-in-progress.

Goals:

Scripts will allow easy installation of fastai2 onto an Ubuntu system.
Scripts will enable quick and easy changes to configs (docker, conda, pip, fastai, my code) without messing up the base system.
The docker container will have GPU access and similar performance to native.
The docker container will have rwx access to my development volume allowing easy development from within and between docker containers.
Any project work done within a container will be easy to backup.
The docker container uses my userid and group for seamless non-root permissions access.
The scripts will be serially re-runable and make minimal assumptions about state.
Docker related scripts will eventually be made into a dockerfile.
