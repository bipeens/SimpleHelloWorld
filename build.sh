#!/bin/bash
set -e  

mvn clean install

wrapdocker &  
sleep 5

docker build -t bipeen/docker_drone . 
docker push bipeen/docker_drone 
