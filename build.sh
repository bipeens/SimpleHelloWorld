#!/bin/bash
set -e  

mvn clean install

cp /var/cache/drone/src/github.com/bipeens/SimpleHelloWorld/target/SimpleHelloWorld.war /var/lib/docker

whoami
sudo start docker
sudo docker ps
sudo docker images
docker build -t bipeen/docker_drone . 
docker push bipeen/docker_drone 
