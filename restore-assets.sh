#!/bin/bash

# Git and Github setup
# rm -rf ~/.ssh
# cp -Rp assets/ssh ~/.ssh

# cp assets/git-config ~/.gitconfig
# chmod -R 600 ~/.ssh/config ~/.ssh/private

# Shell scripts
# rm -rf shell_scripts
# cp -Rp assets/shell_scripts .
# chmod +x shell_scripts/*.sh

# Python scripts
rm -rf python_scripts
cp -Rp assets/python_scripts .
chmod +x python_scripts/*.py

rm www/floorplan_ground_floor.jpg
cp -Rp assets/img/floorplan_ground_floor.jpg www/

rm www/solar_array.jpg
cp -Rp assets/img/solar_array.jpg www/
