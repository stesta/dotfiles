#!/bin/bash

source ./helpers.sh
TOOLSDIR=$HOME/code/tools

# Installer Dependencies
# ----------------------

sudo apt update
sudo apt upgrade

apt-install git
apt-install curl
apt-install wget


# General
# -------

apt-install vim
apt-install fonts-powerline
apt-install ctags
apt-install tmux
apt-install dtach 
apt-install dstat
apt-install xargs
apt-install libcurl4-openssl-dev
apt-isntall libssl-dev
apt-install jq
apt-install libldns-dev
apt-install tree


# Development Languages/Frameworks
# --------------------------------

# go-setup.sh
apt-install libcurl4-openssl-dev libxml2 libxml2-dev libxslt1-dev ruby-dev build-essential libgmp-dev zlib1g-dev
apt-install ruby-full
apt-install build-essential libssl-dev libffi-dev python-dev
apt-install python-setuptools
apt-install python3-pip
apt-install python-pip
apt-install python-dnspython


# Security Tools
# --------------

apt-install nmap 
apt-install masscan
apt-install whatweb
git-install sqlmap https://github.com/sqlmapproject/sqlmap.git $TOOLSDIR
git-install SecLists https://github.com/danielmiessler/SecLists.git $TOOLSDIR
go get -u github.com/ffuf/ffuf
go get -u github.com/tomnomnom/assetfinder
go get -u github.com/tomnomnom/httprobe
go get -u github.com/tomnomnom/meg
go get -u github.com/tomnomnom/unfurl
go get -u github.com/tomnomnom/waybackurls
git-install gf https://github.com/tomnomnom/gf.git $TOOLSDIR
source $TOOLSDIR/gf/gf-completion.bash
