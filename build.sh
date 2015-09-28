#!/bin/bash
set -e  

mvn clean install

whoami
ls /usr/local/bin/
wrapdocker &
sleep 5
docker -H tcp://localhost:4444 ps

sudo docker ps
sudo docker images
wrapdocker && docker build -t bipeen/docker_drone . 
wrapdocker && docker push bipeen/docker_drone 
