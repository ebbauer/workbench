#!/bin/sh

set -e

sudo apt install bat

mkdir -p ~/.local/bin
ln -s /usr/bin/batcat ~/.local/bin/bat