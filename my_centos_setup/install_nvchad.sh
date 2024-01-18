#! /bin/sh

# Check if git is installed
if ! command git &> /dev/null; then
	sudo yum install git
fi;

# Clone the NvChad config
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1

