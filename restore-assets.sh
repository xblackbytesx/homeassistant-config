#!/bin/bash

# Git and Github setup
rm -rf ~/.ssh
cp -Rp assets/ssh ~/.ssh

cp assets/git-config ~/.gitconfig
chmod -R 600 ~/.ssh/config ~/.ssh/private

# Shell scripts
rm -rf shell_scripts
cp -Rp assets/shell_scripts .
chmod +x shell_scripts/*.sh
