#!/bin/bash

# Git and Github setup
mkdir -p ~/.ssh
cp assets/ssh-config ~/.ssh/config
cp assets/ssh-known_hosts ~/.ssh/known_hosts
cp assets/id-github-master ~/.ssh/id-github-master
cp assets/id-nighthawk-hassos ~/.ssh/id-nighthawk-hassos
cp assets/id-hoth-master-hassos ~/.ssh/id-hoth-master-hassos
cp assets/git-config ~/.gitconfig
chmod 600 ~/.ssh/config ~/.ssh/id-*

# Shell scripts
rm -rf shell_scripts
cp -Rp assets/shell_scripts .
chmod +x shell_scripts/*.sh
