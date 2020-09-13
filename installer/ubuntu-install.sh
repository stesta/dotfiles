#!/bin/bash

source ./configuration.sh
source ./functions.sh



# Install Dependencies
sudo apt update
sudo apt upgrade

apt-install git
apt-install wget
apt-install curl

if [ ! -d /usr/local/go ]; then
  tar-install go https://golang.org/dl/go1.15.2.linux-amd64.tar.gz /usr/local 1
  source $HOME/.bashrc
  go get golang.org/x/tools/cmd/goimports
  go get github.com/nsf/gocode
fi

# General
apt-install vim-gtk3 # includes python3
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

# Development
if [ $includeDevTools ]; then
  apt-install haskell-platform
  apt-install libcurl4-openssl-dev libxml2 libxml2-dev libxslt1-dev ruby-dev build-essential libgmp-dev zlib1g-dev
  apt-install ruby-full
  apt-install build-essential libssl-dev libffi-dev python-dev
  apt-install python-setuptools
  apt-install python3-pip
  apt-install python-pip
  apt-install python-dnspython
  tar-install swift https://swift.org/builds/swift-5.2.5-release/ubuntu2004/swift-5.2.5-RELEASE/swift-5.2.5-RELEASE-ubuntu20.04.tar.gz /usr/local 1
  # rust
  # dotnet 

  if [ ! excludeGraphical ]; then
    # vs code
    # vs code extensions https://code.visualstudio.com/docs/editor/extension-gallery#_command-line-extension-management
  fi
fi

# Security Tools
if [ $includeSecTools ]; then
  apt-install libcurl4-openssl-dev libxml2 libxml2-dev libxslt1-dev ruby-dev build-essential libgmp-dev zlib1g-dev
  apt-install ruby-full
  apt-install build-essential libssl-dev libffi-dev python-dev
  apt-install python-setuptools
  apt-install python3-pip
  apt-install python-pip
  apt-install python-dnspython
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
  
  # Graphical Security Tools
  if [ ! $excludeGraphical ]; then
    # burp
    # zap
  fi
fi

# Graphical Applications
if [ ! $excludeGraphical ]; then
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
  # 1password
  # cura
  # mattermost
  # teams
  # PIA
fi
