#! /bin/bash

git clone https://github.com/5aRaDaY/HomeTaskRepo.git
mkdir -p script && cp -R ./HomeTaskRepo/Lesson12/* ./script/
sudo docker run -d -v script:/container_volume -p 1234:8080 jenkins/jenkins:lts-jdk11
