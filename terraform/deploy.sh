#!/bin/bash
yum update -y
yum install -y docker git
service docker start
usermod -a -G docker ec2-user
docker run -d -p 5000:5000 udyngpaws/flask-iac-app:latest
