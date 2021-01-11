#!/bin/bash
#Petit script pour arrêter tout le binz
#zf210111.1035
#pour installer Docker et Docker compose sur une machine Ubuntu c'est ici:
#https://github.com/zuzu59/docker_demo

source ./vpn_secrets.sh

docker-compose stop

