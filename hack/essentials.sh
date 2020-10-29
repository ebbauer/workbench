#!/bin/sh
set -e

echo "Installing git and other basic stuff"
sudo apt update
sudo apt install -y vim git lsof openssh-server curl dos2unix tree
sudo apt install -y make xclip unrar scrot build-essential net-tools parallel
sudo apt install -y ntfs-3g nitrogen systemd-container arandr
sudo apt install -y apt-transport-https ca-certificates

git config --global user.name "Eduardo Bauer"
git config --global user.email "eduardo.bauer@neoway.com.br"

echo "Configure time properly"
sudo ln -fs /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime
sudo timedatectl set-ntp true

echo "Configure keyboard layout"
#sudo localectl set-keymap alt-intl

echo "VPN Support"
sudo apt install -y openvpn

echo "Locale support"
sudo localectl set-locale LANG=en_US.UTF-8

echo "Installing Sound Stuff"
sudo apt install -y pulseaudio pavucontrol

echo "Installing Monitoring tools"
sudo apt install -y iotop iftop htop sysstat

echo "Installing snapd"
sudo apt install -y snapd

echo "Installing vlc"
sudo snap install vlc

echo "Get dotfiles project"
mkdir -p ${HOME}/workspace/bauer
git clone https://github.com/ebbauer/dotfiles.git ${HOME}/workspace/dotfiles || :

echo "Restoring background"
mkdir -p ${HOME}/.config/nitrogen
cp ./hack/cfg/nitrogen-bg-saved.cfg ${HOME}/.config/nitrogen/bg-saved.cfg || :
nitrogen --restore
