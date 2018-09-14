#!/bin/bash

# '''
# Script for launching Jenkins on docker. 
# '''
sudo docker run \
  --rm \
  -u root \
  -p 8080:8080 \
  --name jenkins-tutorials \
  -v jenkins-data:/var/jenkins_home \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v "$HOME":/home \
  jenkinsci/blueocean 
  

# '''
# Script for accessing Jenkins on docker, and having a prompt command window. 
# '''
# docker exec -it jenkins-tutorials bash
# sudo docker exec <container_id> apt-get update
# sudo docker exec <container_id> apt-get install ant -y

# Connect to github via ssh:

ssh -vT git@github.com:marattm/simple-python-pyinstaller-app.git