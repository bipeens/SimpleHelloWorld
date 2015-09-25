#!/bin/bash
set -e  

mvn clean install

whoami

wrapdocker && docker build -t bipeen/docker_drone . 
wrapdocker && docker push bipeen/docker_drone 
