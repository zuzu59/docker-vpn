#!/bin/bash
#Petit script pour démarrer tout le binz
#zf210111.1001
#pour installer Docker et Docker compose sur une machine Ubuntu c'est ici:
#https://github.com/zuzu59/docker_demo

#https://hub.docker.com/r/vimagick/pptpt


source ./vpn_secrets.sh

#docker-compose up
docker-compose up -d
docker-compose logs -f

