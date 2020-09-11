#!/bin/bash

function apt-install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo apt-get -y install $1
  else
    echo "Already installed: ${1}"
  fi
}

function dpkg-install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    filename=$(echo $2 | awk -F / '{ print $NF }') 
    # check if we need to download the file
    if [ ! -f $HOME/tmp/$filename ]; then
      wget $2 --directory-prefix=$HOME/tmp/
    fi
    sudo dpkg -i $1
  else
    echo "Already installed: ${1}"
  fi  
}


function snap-install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo snap install $1
  else
    echo "Already installed: ${1}"
  fi
}


function tar-install {
  if [ ! -d $3/$1 ]; then
    echo "Installing: ${1}..."
    filename=$(echo $2 | awk -F / '{ print $NF }') 
    # check if we need to download the file
    if [ ! -f $HOME/tmp/$filename ]; then
      wget $2 --directory-prefix=$HOME/tmp/
    fi
    sudo mkdir $3/$1
    sudo tar -zxvf $HOME/tmp/$filename -C $3/$1 --strip $4
  else 
    echo "Already installed: ${1}"
  fi
}


function git-install {
  currentDir=$(pwd)
  if [ ! -d $3 ]; then
    echo "Creating Directory: ${3}"
    mkdir $3
  fi
  if [ ! -d $3/$1 ]; then
    echo "Cloning: ${2} in ${3}/${1}"
    cd $3
    git clone $2
  else
    echo "Updating: ${2} in ${3}/${1}"
    cd $3/$1
    git pull --all
    cd $currentDir
  fi
}


sudo apt update
sudo apt upgrade

# git
apt-install git

# go
if [ ! -d /usr/local/go ]; then
  tar-install go https://golang.org/dl/go1.15.2.linux-amd64.tar.gz /usr/local 1
  source $HOME/.bashrc
  go get golang.org/x/tools/cmd/goimports
  go get github.com/nsf/gocode
fi

# General
apt-install vim-gtk3
apt-install fonts-powerline
apt-install ctags
apt-install tmux
apt-install dtach 
apt-install dstat
apt-install libcurl4-openssl-dev
apt-isntall libssl-dev
apt-install jq
apt-install libldns-dev
apt-install rename
apt-install xargs

# Development
apt-install haskell-platform
apt-install libcurl4-openssl-dev libxml2 libxml2-dev libxslt1-dev ruby-dev build-essential libgmp-dev zlib1g-dev
apt-install ruby-full
apt-install build-essential libssl-dev libffi-dev python-dev
apt-install python-setuptools
apt-install python3-pip
apt-install python-pip
apt-install python-dnspython
tar-install swift https://swift.org/builds/swift-5.2.5-release/ubuntu2004/swift-5.2.5-RELEASE/swift-5.2.5-RELEASE-ubuntu20.04.tar.gz /usr/local 1

# Security Tools
apt-install nmap 
apt-install masscan
apt-install whatweb
git-install sqlmap https://github.com/sqlmapproject/sqlmap.git $HOME/tools
git-install SecLists https://github.com/danielmiessler/SecLists.git $HOME/tools
go get -u github.com/ffuf/ffuf
go get -u github.com/tomnomnom/assetfinder
go get -u github.com/tomnomnom/httprobe
go get -u github.com/tomnomnom/meg
go get -u github.com/tomnomnom/unfurl
go get -u github.com/tomnomnom/waybackurls
git-install gf https://github.com/tomnomnom/gf.git $HOME/tools
source $HOME/tools/gf/gf-completion.bash

# Graphical Applications
snap-install beekeeper-studio
snap-install blender
apt-install dconf-editor
apt-install geary
apt-install gnome-boxes
apt-install gnome-calendar
apt-install gnome-tweaks
dpkg-install google-chrome https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
snap-install krita
snap-install obs-studio
apt-install remmina
snap-install spotify
apt-install vlc