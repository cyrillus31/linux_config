#! /bin/sh

# General update
sudo dnf update -y

# Install specifics
sudo dnf install -y python3.11 git
sudo yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm
sudo yum install -y neovim python3-neovim


# Install other programms
source ./install_nginx.sh
source ./install_docker.sh
source ./install_nvchad.sh
