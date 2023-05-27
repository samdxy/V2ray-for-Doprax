#!/bin/sh

export UUID=$1
export DOMAIN_NAME=$2
export CFKEY=$3
export CFUSER=$4
export CFZONE_NAME=$5

cd ddns
bash cf-v4-ddns.sh
cd -

cd caddy-docker
bash build.sh
cd -

docker run -d -p 443:443 -e UUID=$UUID -e DOMAIN_NAME=$DOMAIN_NAME caddy:samdxy.v1

