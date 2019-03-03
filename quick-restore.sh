#!/bin/bash

# Remove if exists
rm -rf custom_compnents
rm -rf www/custom-lovelace
rm www/tracker-card.js
rm lovelace-gen.py

# Fetch desired custom components
mkdir -p custom_compnents/sensor
wget https://raw.githubusercontent.com/custom-components/custom_updater/master/custom_components/custom_updater.py -O custom_compnents/custom_updater.py
wget https://raw.githubusercontent.com/custom-components/sensor.radarr_upcoming_media/master/custom_components/radarr_upcoming_media/sensor.py -O custom_compnents/sensor/radarr_upcoming_media.py
wget https://raw.githubusercontent.com/custom-components/sensor.sonarr_upcoming_media/master/custom_components/sonarr_upcoming_media/sensor.py -O custom_compnents/sensor/sonarr_upcoming_media.py

# Fetch desired custom cards
mkdir -p www/custom-lovelace/upcoming-media-card
mkdir -p www/custom-lovelace/monster-card
wget https://raw.githubusercontent.com/custom-cards/tracker-card/master/tracker-card.js -O www/tracker-card.js
wget https://raw.githubusercontent.com/custom-cards/upcoming-media-card/master/upcoming-media-card.js -O www/custom-lovelace/upcoming-media-card/upcoming-media-card.js
wget https://raw.githubusercontent.com/ciotlosm/custom-lovelace/master/monster-card/monster-card.js -O www/custom-lovelace/monster-card/monster-card.js

# Lovelace generator
wget https://raw.githubusercontent.com/thomasloven/homeassistant-lovelace-gen/master/lovelace-gen.py
