#! /bin/sh

# General update
sudo yum update -y

# Install
sudo yum install -y python3.11 git
git config --global credential.helper store

sudo yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm
sudo yum install -y neovim python3-neovim


# Install other programms
source ./install_nginx.sh
source ./install_docker.sh
source ./install_nvchad.sh


# Setup .bashrc

read -p "Do you want to setup .bashrc? y/n" answer

if [ -f $HOME/.bashrc && $answer = "y"]; then
  cat ../my_bash_config/.bashrc >> $HOME/.bashrc-part
else
  cp ../my_bash_config/.bashrc $HOME/
fi;

if [ -d $HOME/.bashrc.d/ && $answer = "y" ]; then
  cp -t $HOME/.bashrc.d/ ../my_bash_config/.bashrc.d/*
else
  cp -r -t $HOME/ ../my_bash_config/.bashrc.d/
fi;
