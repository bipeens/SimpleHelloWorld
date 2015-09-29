#!/bin/bash
set -e  

mvn clean install

cp /var/cache/drone/src/github.com/bipeens/SimpleHelloWorld/target/SimpleHelloWorld.war /var/lib/docker

whoami
sudo service docker start
sudo docker ps

docker build -t bipeen/docker_drone . 
docker push bipeen/docker_drone 
