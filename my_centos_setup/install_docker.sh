#! /bin/sh

# Set up the repository
sudo yum install yum-utils -y
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo -y

# Install Docker Engine
sudo yum install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y

# Systemd set up
sudo systemctl enable docker
sudo systemctl start docker


