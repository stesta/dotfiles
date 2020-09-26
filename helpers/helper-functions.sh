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

function flatpak-install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    flatpak install $1
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