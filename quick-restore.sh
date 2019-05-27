#!/bin/bash

# Remove if exists
rm -rf custom_components
rm -rf www/custom-lovelace
rm www/tracker-card.js
rm lovelace-gen.py

# Fetch desired custom components
mkdir -p custom_components/radarr_upcoming_media
mkdir -p custom_components/sonarr_upcoming_media
# wget https://raw.githubusercontent.com/custom-components/custom_updater/master/custom_components/custom_updater.py -O custom_components/custom_updater.py
wget https://raw.githubusercontent.com/custom-components/custom_updater/4.2.19/custom_components/custom_updater.py -O custom_components/custom_updater.py
wget https://raw.githubusercontent.com/custom-components/sensor.radarr_upcoming_media/master/custom_components/radarr_upcoming_media/sensor.py -O custom_components/radarr_upcoming_media/sensor.py
wget https://raw.githubusercontent.com/custom-components/sensor.sonarr_upcoming_media/master/custom_components/sonarr_upcoming_media/sensor.py -O custom_components/sonarr_upcoming_media/sensor.py

# Fetch desired custom cards
mkdir -p www/custom-lovelace/upcoming-media-card
mkdir -p www/custom-lovelace/monster-card
mkdir -p www/custom-lovelace/lovelace-swipe-navigation
mkdir -p www/custom-lovelace/lovelace-bar-card
mkdir -p www/custom-lovelace/lovelace-fold-entity-row
mkdir -p www/custom-lovelace/lovelace-card-tools
wget https://raw.githubusercontent.com/custom-cards/tracker-card/master/tracker-card.js -O www/tracker-card.js
wget https://raw.githubusercontent.com/custom-cards/upcoming-media-card/master/upcoming-media-card.js -O www/custom-lovelace/upcoming-media-card/upcoming-media-card.js
wget https://raw.githubusercontent.com/ciotlosm/custom-lovelace/master/monster-card/monster-card.js -O www/custom-lovelace/monster-card/monster-card.js
wget https://raw.githubusercontent.com/maykar/lovelace-swipe-navigation/master/swipe-navigation.js -O www/custom-lovelace/lovelace-swipe-navigation/swipe-navigation.js
wget https://raw.githubusercontent.com/custom-cards/bar-card/master/bar-card.js -O www/custom-lovelace/lovelace-bar-card/bar-card.js
wget https://raw.githubusercontent.com/thomasloven/lovelace-card-tools/master/card-tools.js -O www/custom-lovelace/lovelace-card-tools/card-tools.js
wget https://raw.githubusercontent.com/thomasloven/lovelace-fold-entity-row/master/fold-entity-row.js -O www/custom-lovelace/lovelace-fold-entity-row/fold-entity-row.js

# Lovelace generator
wget https://raw.githubusercontent.com/thomasloven/homeassistant-lovelace-gen/master/lovelace-gen.py

# Git and Github setup
mkdir -p ~/.ssh
cp assets/ssh-config ~/.ssh/config
cp assets/id-github-master ~/.ssh/id-github-master
cp assets/git-config ~/.gitconfig
chmod 600 ~/.ssh/config ~/.ssh/id-github-master
