#! /bin/bash

sudo docker run -d -v script:/container_volume -p 1234:8080 jenkins/jenkins:lts-jdk11
