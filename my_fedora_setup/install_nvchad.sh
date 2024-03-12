#! /bin/sh

# Install fuzzy finder for telescope
sudo dnf install fzf -y
sudo dnf install ripgrep -y

# Check if git is installed
if ! command git &> /dev/null; then
	sudo yum install git -y
fi;

# Clone the NvChad config
git clone --branch custom https://github.com/cyrillus31/NvChad ~/.config/nvim --depth 1

