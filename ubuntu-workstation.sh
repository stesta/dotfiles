#!/bin/bash

DOTFILESDIR=$HOME/.dotfiles
TOOLSDIR=$HOME/code/tools
source $DOTFILESDIR/helpers/helper-functions.sh

# Installer Dependencies
# ----------------------

sudo apt update
sudo apt upgrade

apt-install git
apt-install curl
apt-install wget
sh $DOTFILESDIR/helpers/flatpak-setup.sh


# General
# -------

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
apt-install tree
# gutenprint (for MP470 drivers)


# Development Languages/Frameworks
# --------------------------------

# dotnet-setup.sh 
# go-setup.sh
# node
apt-install haskell-platform
apt-install libcurl4-openssl-dev libxml2 libxml2-dev libxslt1-dev ruby-dev build-essential libgmp-dev zlib1g-dev
apt-install ruby-full
apt-install build-essential libssl-dev libffi-dev python-dev
apt-install python-setuptools
apt-install python3-pip
apt-install python-pip
apt-install python-dnspython
# conda
tar-install swift https://swift.org/builds/swift-5.2.5-release/ubuntu2004/swift-5.2.5-RELEASE/swift-5.2.5-RELEASE-ubuntu20.04.tar.gz /usr/local 1
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh


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


# Desktop Applications
# --------------------

# 1password
snap-install blender
# Burp Suite Community
# Darktable
apt-install dconf-editor
# Discord
apt-install geary
apt-install gimp
apt-install gnome-boxes
apt-install gnome-calendar
apt-install gnome-contacts
apt-install gnome-tweaks
dpkg-install google-chrome https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
# Grub Customizer
# Inkscape
# Kdenlive
snap-install krita
# Mattermost
flatpak-install com.microsoft.Teams
snap-install obs-studio
# Owasp Zap
# Pomodoro
# PIA
apt-install remmina
# Retroarch
# Scid vs PC
snap-install spotify
# Todist 
# Unity Hub
./vscode-setup.sh
apt-install vlc


# Gnome Customization
# -------------------

# Ubuntu Dock
gsettings set org.gnome.shell.extensions.dash-to-dock custom-theme-running-dots-color 
gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed false
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position 'BOTTOM'
gsettings set org.gnome.shell.extensions.dash-to-dock extend-height false
gsettings set org.gnome.shell.extensions.dash-to-dock require-pressure-to-show false
gsettings set org.gnome.shell.extensions.dash-to-dock background-opacity 0.3

# auto brightness off

# Appications: Adwaita-Dark

# Cursor: Yaru

# Icons: Papirus 
sudo add-apt-repository ppa:papirus/papirus
apt-install papirus-icon-theme

# Shell: Adwaita-Dark

# Sound: Yaru

# Background-Image: 

# Lockscreen-Image: 


# Setup, Linking and Cleanup
sh $DOTFILESDIR/setup.sh