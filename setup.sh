#!/bin/sh
# -*- mode: sh -*-

sudo ls >/dev/null 2>&1
if [ $? -eq 0 ]
then
    sudo apt-get update -qq
    sudo apt-get install -y emacs git lsof
else
    apt-get update -qq
    apt-get install -y emacs git lsof
fi

cd ~

git init
git remote add origin https://github.com/taylormonacelli/dotfiles.git
git fetch
git checkout -f -t origin/master

emacs --daemon # this installs melpa packages
