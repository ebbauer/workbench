#!/bin/sh

set -e

"Installing Java"
sudo add-apt-repository ppa:webupd8team/java -y
sudo apt update
sudo apt install -y oracle-java8-set-default


