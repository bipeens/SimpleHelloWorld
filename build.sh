#!/bin/bash
set -e  
cd /var/cache/drone/src/

mvn clean install

wrapdocker &  
sleep 5

docker build -t bipeen/docker_drone . 
docker push bipeen/docker_drone 