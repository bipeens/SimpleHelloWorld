#!/bin/bash
set -e  
docker pull bipeen/docker_drone 
docker stop docker_drone 
docker rm docker_drone  
docker run --name="docker_drone"  bipeen/docker_drone