#!/bin/bash

HOST="18.224.40.203"
USER="ec2-user"
KEY="../../lab_cloud.pem"

ssh -i $KEY $USER@$HOST \
  "sudo yum install docker -y && sudo service docker start && sudo docker run -d -p 80:8888 daferpe/mycloud_lab"
