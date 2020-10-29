#!/bin/sh

set -e 

echo "Installing Sublime"
sudo snap install sublime-text --classic

echo "Installing GoSublime"
mkdir -p $HOME/.config/sublime-text-3/Packages
cd $HOME/.config/sublime-text-3/Packages
git clone https://margo.sh/GoSublime
