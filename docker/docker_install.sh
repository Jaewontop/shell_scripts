#!/bin/bash
echo "==========================================="
echo "DOCKER INSTALL START!"
echo "==========================================="

sudo apt-get update -y &&\
	    apt-transport-https &&\
	        ca-certificates &&\
		    curl &&\
		        software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update
apt-cache policy docker-ce
sudo apt install -y docker-ce
sudo usermod -aG docker $USER


# install docker-compose
sudo apt-get install docker-compose-plugin
sudo apt-get install docker-compose
sudo service docker restart

echo "DOCKER VERSION : $(docker --version)"
echo "DOCKER COMPOSE VERSION : $(docker compose version)"


