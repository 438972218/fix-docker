#!/bin/bash

set -e

tar -zxvf docker-20.10.1.tgz
sudo cp -f docker/* /usr/bin/
sudo cp -f docker.service /etc/systemd/system/docker.service
chmod +x /etc/systemd/system/docker.service
systemctl daemon-reload
systemctl start docker
systemctl enable docker.service

sudo cp -f docker-compose-Linux-x86_64 /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

systemctl daemon-reload
systemctl restart docker


