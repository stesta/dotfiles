#!/bin/bash

INSTALLER_PATH=$(pwd)

while getopts ":tds" opt; do
  case $opt in
    t) WORKSTATION=true
      ;;
    d) DEVBOX=true
      ;;
    s) SECBOX=true 
      ;;
  esac
done