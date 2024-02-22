#! /bin/bash

git clone https://github.com/5aRaDaY/ScriptsRepo.git
mkdir -p script && cp -R ./ScriptsRepo/Jenkins/* ./script/
sudo docker run -d -v script:/container_volume -p 1234:8080 jenkins/jenkins:lts-jdk11
