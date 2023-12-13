#!/bin/bash

echo "==========================================="
echo "DOCKER UNINSTALL START!"
echo "==========================================="

sudo apt-get purge -y docker-engine docker docker.io docker-ce
sudo apt-get autoremove -y --purge docker-engine docker docker.io docker-ce
sudo rm -rf /var/lib/docker /etc/docker
sudo rm /etc/apparmor.d/docker
sudo groupdel docker
sudo rm -rf /var/run/docker.sock
sudo rm -rf /usr/local/bin/docker-compose
sudo rm -rf /etc/docker
sudo rm -rf ~/.docker

echo "==========================================="
echo "DOCKER UNINSTALLED!"
echo "==========================================="
