#!/bin/sh

set -o nounset
set -o errexit

echo "Installing zsh"
sudo apt install -y zsh

echo "Set zsh as default shell"
sudo chsh -s $(which zsh) $USER

echo "Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" || :

