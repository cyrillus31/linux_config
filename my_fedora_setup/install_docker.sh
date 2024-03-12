#! /bin/sh
# Set up the repository
sudo dnf -y install dnf-plugins-core 
sudo dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo -y

# Install Docker Engine
sudo dnf install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y

# Systemd set up
sudo systemctl enable docker
sudo systemctl start docker


read -p "Do you want to install Docker Desktop? [y/n]   " answer

if [[ $answer = "y" ]]; then
  firefox --browser https://docs.docker.com/desktop/install/fedora/
fi
