#!/bin/sh
set -o errexit
set -o nounset

GO_VERSION="1.15"

echo "Install Go "$GO_VERSION" at "$GOROOT

cd /tmp
wget https://storage.googleapis.com/golang/go$GO_VERSION.linux-amd64.tar.gz
tar -xvf go$GO_VERSION.linux-amd64.tar.gz

sudo rm -rf $GOROOT
sudo mkdir -p $GOROOT
sudo mv ./go/* $GOROOT

mkdir -p $GOPATH/src $GOPATH/bin $GOPATH/pkg
go get golang.org/x/tools/cmd/goimports
