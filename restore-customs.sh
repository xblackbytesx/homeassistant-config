#!/bin/bash

# Remove if exists
rm -rf custom_components
rm -rf www/custom-lovelace
rm www/tracker-card.js
rm lovelace-gen.py

mkdir -p custom_components/lovelace_gen
wget https://raw.githubusercontent.com/thomasloven/hass-lovelace_gen/master/custom_components/lovelace_gen/__init__.py -O custom_components/lovelace_gen/__init__.py
wget https://raw.githubusercontent.com/thomasloven/hass-lovelace_gen/master/custom_components/lovelace_gen/manifest.json -O custom_components/lovelace_gen/manifest.json

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

mkdir -p www/custom-lovelace/decluttering-card
wget https://github.com/custom-cards/decluttering-card/raw/master/dist/decluttering-card.js -O www/custom-lovelace/decluttering-card/decluttering-card.js

mkdir -p www/custom-lovelace/upcoming-media-card
wget https://raw.githubusercontent.com/custom-cards/upcoming-media-card/master/upcoming-media-card.js -O www/custom-lovelace/upcoming-media-card/upcoming-media-card.js

mkdir -p www/custom-lovelace/lovelace-auto-entities
wget https://raw.githubusercontent.com/thomasloven/lovelace-auto-entities/master/auto-entities.js -O www/custom-lovelace/lovelace-auto-entities/auto-entities.js

mkdir -p www/custom-lovelace/lovelace-swipe-navigation
wget https://raw.githubusercontent.com/maykar/lovelace-swipe-navigation/master/swipe-navigation.js -O www/custom-lovelace/lovelace-swipe-navigation/swipe-navigation.js

mkdir -p www/custom-lovelace/lovelace-bar-card
wget https://raw.githubusercontent.com/custom-cards/bar-card/master/bar-card.js -O www/custom-lovelace/lovelace-bar-card/bar-card.js

mkdir -p www/custom-lovelace/lovelace-fold-entity-row
wget https://raw.githubusercontent.com/thomasloven/lovelace-fold-entity-row/master/fold-entity-row.js -O www/custom-lovelace/lovelace-fold-entity-row/fold-entity-row.js

mkdir -p www/custom-lovelace/lovelace-card-tools
wget https://raw.githubusercontent.com/thomasloven/lovelace-card-tools/master/card-tools.js -O www/custom-lovelace/lovelace-card-tools/card-tools.js

mkdir -p www/custom-lovelace/lovelace-mini-graph-card
wget https://github.com/kalkih/mini-graph-card/releases/download/v0.9.0-beta/mini-graph-card-bundle.js -O www/custom-lovelace/lovelace-mini-graph-card/mini-graph-card-bundle.js

mkdir -p www/custom-lovelace/lovelace-mini-media-player
wget https://github.com/kalkih/mini-media-player/releases/download/v1.5.1/mini-media-player-bundle.js -O www/custom-lovelace/lovelace-mini-media-player/mini-media-player-bundle.js

mkdir -p www/custom-lovelace/simple-thermostat
wget https://github.com/nervetattoo/simple-thermostat/releases/download/0.31.0/simple-thermostat.js -O www/custom-lovelace/simple-thermostat/simple-thermostat.js

mkdir -p www/custom-lovelace/zigbee2mqtt-networkmap
wget https://github.com/azuwis/zigbee2mqtt-networkmap/releases/download/v0.5.0/zigbee2mqtt-networkmap.js -O www/custom-lovelace/zigbee2mqtt-networkmap/zigbee2mqtt-networkmap.js
