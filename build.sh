#!/bin/bash
set -e  

mvn clean install

whoami
docker ps
docker images
wrapdocker && docker build -t bipeen/docker_drone . 
wrapdocker && docker push bipeen/docker_drone 
