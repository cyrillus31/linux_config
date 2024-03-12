#! /bin/bash

# install snap package manager
sudo dnf install snapd
sleep 5
sudo ln -s /var/lib/snapd/snap /snap

sudo snap install postman


