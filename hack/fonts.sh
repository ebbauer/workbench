#!/bin/sh

set -o errexit
set -o nounset

CURRENT_DIR=$(pwd)

echo "Installing some fonts"
cd /tmp
git clone https://github.com/gabrielelana/awesome-terminal-fonts.git || :
cd awesome-terminal-fonts
./install.sh

fc-cache -vf

