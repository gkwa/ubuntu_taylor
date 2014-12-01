#!/bin/sh
# -*- mode: sh -*-

sudo apt-get update
sudo apt-get install -y emacs git lsof

cd ~

git init && git remote add origin https://github.com/taylormonacelli/dotfiles.git
git fetch && git checkout -f -t origin/master
emacs --daemon
