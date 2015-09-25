#!/bin/bash
set -e  

mvn clean install

wrapdocker &  
sleep 5
whoami

sudo docker build -t bipeen/docker_drone . 
sudo docker push bipeen/docker_drone 
