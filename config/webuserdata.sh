#!/bin/bash

apt-get -y update
apt-get -y install ansible
ansible-pull -U https://github.com/jason-oss/playbooks.git
ansible galaxy install fubarhouse.golang

#export HOSTNAME=$(curl -s http://169.254.169.254/metadata/v1/hostname)
#export PUBLIC_IPV4=$(curl -s http://169.254.169.254/metadata/v1/interfaces/public/0/ipv4/address)
#echo Hello from Droplet $HOSTNAME, with IP Address: $PUBLIC_IPV4 > /var/www/html/index.nginx-debian.html