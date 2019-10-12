#!/bin/bash

# Remove if exists
rm -rf custom_components
rm -rf www/custom-lovelace
rm www/tracker-card.js
rm lovelace-gen.py

# Fetch desired custom components
# mkdir -p custom_components/custom_updater
# wget https://raw.githubusercontent.com/custom-components/custom_updater/master/custom_components/custom_updater/__init__.py -O custom_components/custom_updater/__init__.py
# wget https://raw.githubusercontent.com/custom-components/custom_updater/master/custom_components/custom_updater/services.yaml -O custom_components/custom_updater/services.yaml
# wget https://raw.githubusercontent.com/custom-components/custom_updater/master/custom_components/custom_updater/manifest.json -O custom_components/custom_updater/manifest.json

mkdir -p custom_components/rdw
wget https://raw.githubusercontent.com/eelcohn/home-assistant-rdw/master/__init__.py -O custom_components/rdw/__init__.py
wget https://raw.githubusercontent.com/eelcohn/home-assistant-rdw/master/sensor.py -O custom_components/rdw/sensor.py
wget https://raw.githubusercontent.com/eelcohn/home-assistant-rdw/master/manifest.json -O custom_components/rdw/manifest.json

mkdir -p custom_components/radarr_upcoming_media
wget https://raw.githubusercontent.com/custom-components/sensor.radarr_upcoming_media/master/custom_components/radarr_upcoming_media/__init__.py -O custom_components/radarr_upcoming_media/__init__.py
wget https://raw.githubusercontent.com/custom-components/sensor.radarr_upcoming_media/master/custom_components/radarr_upcoming_media/sensor.py -O custom_components/radarr_upcoming_media/sensor.py
wget https://raw.githubusercontent.com/custom-components/sensor.radarr_upcoming_media/master/custom_components/radarr_upcoming_media/manifest.json -O custom_components/radarr_upcoming_media/manifest.json

mkdir -p custom_components/sonarr_upcoming_media
wget https://raw.githubusercontent.com/custom-components/sensor.sonarr_upcoming_media/master/custom_components/sonarr_upcoming_media/__init__.py -O custom_components/sonarr_upcoming_media/__init__.py
wget https://raw.githubusercontent.com/custom-components/sensor.sonarr_upcoming_media/master/custom_components/sonarr_upcoming_media/sensor.py -O custom_components/sonarr_upcoming_media/sensor.py
wget https://raw.githubusercontent.com/custom-components/sensor.sonarr_upcoming_media/master/custom_components/sonarr_upcoming_media/manifest.json -O custom_components/sonarr_upcoming_media/manifest.json

git clone git@github.com:rgruebel/ha_zigbee2mqtt_networkmap.git custom_components/zigbee_networkmap
mv custom_components/zigbee_networkmap/custom_components/zigbee2mqtt_networkmap custom_components/
rm -rf custom_components/zigbee_networkmap

cp -Rp assets/custom_components/garbage_pickup custom_components/

# Fetch desired custom cards
# wget https://raw.githubusercontent.com/custom-cards/tracker-card/master/tracker-card.js -O www/tracker-card.js

mkdir -p www/custom-lovelace/upcoming-media-card
wget https://raw.githubusercontent.com/custom-cards/upcoming-media-card/master/upcoming-media-card.js -O www/custom-lovelace/upcoming-media-card/upcoming-media-card.js

mkdir -p www/custom-lovelace/monster-card
wget https://raw.githubusercontent.com/custom-cards/monster-card/master/monster-card.js -O www/custom-lovelace/monster-card/monster-card.js

mkdir -p www/custom-lovelace/lovelace-swipe-navigation
wget https://raw.githubusercontent.com/maykar/lovelace-swipe-navigation/master/swipe-navigation.js -O www/custom-lovelace/lovelace-swipe-navigation/swipe-navigation.js

mkdir -p www/custom-lovelace/lovelace-bar-card
wget https://raw.githubusercontent.com/custom-cards/bar-card/master/bar-card.js -O www/custom-lovelace/lovelace-bar-card/bar-card.js

mkdir -p www/custom-lovelace/lovelace-fold-entity-row
wget https://raw.githubusercontent.com/thomasloven/lovelace-fold-entity-row/master/fold-entity-row.js -O www/custom-lovelace/lovelace-fold-entity-row/fold-entity-row.js

mkdir -p www/custom-lovelace/lovelace-card-tools
wget https://raw.githubusercontent.com/thomasloven/lovelace-card-tools/master/card-tools.js -O www/custom-lovelace/lovelace-card-tools/card-tools.js

mkdir -p www/custom-lovelace/lovelace-mini-graph-card
wget https://github.com/kalkih/mini-graph-card/releases/download/v0.7.0/mini-graph-card-bundle.js -O www/custom-lovelace/lovelace-mini-graph-card/mini-graph-card-bundle.js

mkdir -p www/custom-lovelace/lovelace-mini-media-player
wget https://github.com/kalkih/mini-media-player/releases/download/v1.4.1/mini-media-player-bundle.js -O www/custom-lovelace/lovelace-mini-media-player/mini-media-player-bundle.js

mkdir -p www/custom-lovelace/simple-thermostat
wget https://github.com/nervetattoo/simple-thermostat/releases/download/0.26.0-0/simple-thermostat.js -O www/custom-lovelace/simple-thermostat/simple-thermostat.js

# Lovelace generator
wget https://raw.githubusercontent.com/thomasloven/homeassistant-lovelace-gen/master/lovelace-gen.py
