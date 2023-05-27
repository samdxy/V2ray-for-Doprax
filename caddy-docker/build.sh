#!/bin/sh

yum install -y docker
service docker restart
docker build -t caddy:samdxy.v1 .

