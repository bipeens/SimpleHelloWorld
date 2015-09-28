#!/bin/bash
set -e  

mvn clean install

whoami
sudo docker start

sudo docker ps
sudo docker images
wrapdocker && docker build -t bipeen/docker_drone . 
wrapdocker && docker push bipeen/docker_drone 
