#!/bin/bash

# make sure docker is running
systemctl start docker

# build the image out of the container
docker build -t noamapp .

# remove all past containers
docker rm $(docker ps -a -q)

# run this shit
docker run -dit --name app -p 80:80 --privileged noamapp
