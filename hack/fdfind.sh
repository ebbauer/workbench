#!/bin/sh

set -e

sudo apt install fd-find

mkdir -p ~/.local/bin
ln -s /usr/bin/fdfind ~/.local/bin/fd