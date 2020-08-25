# Python@Linux Development using Docker on Windows

While using a Windows environment it may be usefull to run development tools in a Linux docker container.

This repository provides shell scritps and the Dockerfile required to setup a linux developer container with a persistent /home on Windows.

## Features
- container using centos7 with python3(.6)
- shell scripts to build/start/stop the container
- /home is stored as a docker volume to persist data across container restarts
- the host public key is used to authenticate with the container sshd

## Requirements:
- Windows 10
- Docker for Windows

# How to use this repository:

Download and extract this repository archive from:
https://github.com/joaompinto/pyld.docker.win/archive/master.zip


If you you are using Git Bash for the first time, make sure you [generate an ssh key](https://docs.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent#generating-a-new-ssh-key).
This key will be used to login into authenticate with the container.


# Start the docker instance
From a GitBash terminal:
```
export AUTH_PUB_KEY=$(cat ~/.ssh/id_rsa.pub)
./start.sh
```

# Using
You can login from GitBash or using VSCode remote ssh extension with the command:
```sh
ssh developer@localhost -p2222
```
