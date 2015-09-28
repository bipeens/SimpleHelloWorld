#!/bin/bash
set -e  

mvn clean install

cp /var/cache/drone/src/github.com/bipeens/SimpleHelloWorld/target/SimpleHelloWorld.war /var/lib/docker

whoami
ls /usr/local/bin/
wrapdocker &
sleep 5
ls /var/lib/docker
docker -H tcp://localhost ps

sudo docker ps
sudo docker images
wrapdocker && docker build -t bipeen/docker_drone . 
wrapdocker && docker push bipeen/docker_drone 
