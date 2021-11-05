#!/bin/bash

# make sure docker is running
systemctl start docker

# remove all past containers
docker rm $(docker ps -a -q)

# run this shit
docker run -it --rm -d -p 80:80 --name web -v /var/lib/jenkins/workspace/new_cicd/html:/usr/share/nginx/html nginx
