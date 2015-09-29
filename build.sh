#!/bin/bash
set -e  

mvn clean install

cp /var/cache/drone/src/github.com/bipeens/SimpleHelloWorld/target/SimpleHelloWorld.war /var/lib/docker

whoami
ls /usr/local/bin/

ls /var/lib/docker

docker ps
docker images
docker build -t bipeen/docker_drone . 
docker push bipeen/docker_drone 
