#!/bin/sh

set -o errexit
set -o nounset

export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export GOBIN=$HOME/go/bin
export PATH=$PATH":"$GOPATH"/bin:"$GOROOT"/bin"

chmod +x hack/*.sh

hack/essentials.sh
hack/fonts.sh
hack/golang.sh
hack/window-manager.sh
hack/browsers.sh
hack/docker.sh
hack/zsh.sh
hack/fzf.sh
hack/sublime.sh
hack/spotify.sh
hack/datagrip.sh
hack/robomongo.sh
hack/nw.sh
hack/kubectl.sh

sudo apt autoremove -y