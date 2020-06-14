#!/bin/bash

# Remove if exists
rm -rf themes
rm -rf custom_components
rm -rf www/custom-lovelace

echo "Fetching themes"
mkdir -p themes
wget https://raw.githubusercontent.com/JuanMTech/orange_dark/master/themes/orange_dark.yaml -O themes/orange_dark.yaml
sed -i 's/Orange Dark/orange_dark/g' themes/orange_dark.yaml
cp -Rp assets/themes/* themes/

echo "Installing RDW Component"
mkdir -p custom_components/rdw
wget https://raw.githubusercontent.com/eelcohn/home-assistant-rdw/master/__init__.py -O custom_components/rdw/__init__.py
wget https://raw.githubusercontent.com/eelcohn/home-assistant-rdw/master/sensor.py -O custom_components/rdw/sensor.py
wget https://raw.githubusercontent.com/eelcohn/home-assistant-rdw/master/manifest.json -O custom_components/rdw/manifest.json

echo "Installing Radarr Component"
mkdir -p custom_components/radarr_upcoming_media
wget https://raw.githubusercontent.com/custom-components/sensor.radarr_upcoming_media/master/custom_components/radarr_upcoming_media/__init__.py -O custom_components/radarr_upcoming_media/__init__.py
wget https://raw.githubusercontent.com/custom-components/sensor.radarr_upcoming_media/master/custom_components/radarr_upcoming_media/sensor.py -O custom_components/radarr_upcoming_media/sensor.py
wget https://raw.githubusercontent.com/custom-components/sensor.radarr_upcoming_media/master/custom_components/radarr_upcoming_media/manifest.json -O custom_components/radarr_upcoming_media/manifest.json

echo "Installing Sonarr Component"
mkdir -p custom_components/sonarr_upcoming_media
wget https://raw.githubusercontent.com/custom-components/sensor.sonarr_upcoming_media/master/custom_components/sonarr_upcoming_media/__init__.py -O custom_components/sonarr_upcoming_media/__init__.py
wget https://raw.githubusercontent.com/custom-components/sensor.sonarr_upcoming_media/master/custom_components/sonarr_upcoming_media/sensor.py -O custom_components/sonarr_upcoming_media/sensor.py
wget https://raw.githubusercontent.com/custom-components/sensor.sonarr_upcoming_media/master/custom_components/sonarr_upcoming_media/manifest.json -O custom_components/sonarr_upcoming_media/manifest.json

echo "Installing ZigBee NetworkMap Component"
git clone git@github.com:rgruebel/ha_zigbee2mqtt_networkmap.git custom_components/zigbee_networkmap
mv custom_components/zigbee_networkmap/custom_components/zigbee2mqtt_networkmap custom_components/
rm -rf custom_components/zigbee_networkmap

echo "Installing HASS Node Red Component"
git clone git@github.com:zachowj/hass-node-red.git custom_components/hass-node-red
mv custom_components/hass-node-red/custom_components/nodered custom_components/
rm -rf custom_components/hass-node-red

echo "Installing Garbage Pickup Component"
cp -Rp assets/custom_components/garbage_pickup custom_components/

echo "Installing Decluttering Card"
mkdir -p www/custom-lovelace/decluttering-card
wget https://github.com/custom-cards/decluttering-card/releases/download/0.6.1/decluttering-card.js -O www/custom-lovelace/decluttering-card/decluttering-card.js

echo "Installing Upcoming Media Card"
mkdir -p www/custom-lovelace/upcoming-media-card
wget https://raw.githubusercontent.com/custom-cards/upcoming-media-card/master/upcoming-media-card.js -O www/custom-lovelace/upcoming-media-card/upcoming-media-card.js

echo "Installing Auto-Entities Card"
mkdir -p www/custom-lovelace/lovelace-auto-entities
wget https://raw.githubusercontent.com/thomasloven/lovelace-auto-entities/master/auto-entities.js -O www/custom-lovelace/lovelace-auto-entities/auto-entities.js

echo "Installing Swipe Navigation Card"
mkdir -p www/custom-lovelace/lovelace-swipe-navigation
wget https://raw.githubusercontent.com/maykar/lovelace-swipe-navigation/master/swipe-navigation.js -O www/custom-lovelace/lovelace-swipe-navigation/swipe-navigation.js

# echo "Installing Swipe Card"
# mkdir -p www/custom-lovelace/swipe-card
# wget https://raw.githubusercontent.com/bramkragten/swipe-card/master/dist/swipe-card.js -O www/custom-lovelace/swipe-card/swipe-card.js

# echo "Installing Button Card"
# mkdir -p www/custom-lovelace/button-card
# wget http://www.github.com/custom-cards/button-card/releases/latest/download/button-card.js -O www/custom-lovelace/button-card/button-card.js

echo "Installing Vertical Stack in Card Card"
mkdir -p www/custom-lovelace/vertical-stack-in-card
wget https://raw.githubusercontent.com/ofekashery/vertical-stack-in-card/master/vertical-stack-in-card.js -O www/custom-lovelace/vertical-stack-in-card/vertical-stack-in-card.js

echo "Installing Bar Card"
mkdir -p www/custom-lovelace/lovelace-bar-card
wget https://github.com/custom-cards/bar-card/releases/download/3.1.6/bar-card.js -O www/custom-lovelace/lovelace-bar-card/bar-card.js

echo "Installing Fold-entity Card"
mkdir -p www/custom-lovelace/lovelace-fold-entity-row
wget https://raw.githubusercontent.com/thomasloven/lovelace-fold-entity-row/master/fold-entity-row.js -O www/custom-lovelace/lovelace-fold-entity-row/fold-entity-row.js

echo "Installing Card Tools"
mkdir -p www/custom-lovelace/lovelace-card-tools
wget https://raw.githubusercontent.com/thomasloven/lovelace-card-tools/master/card-tools.js -O www/custom-lovelace/lovelace-card-tools/card-tools.js

echo "Installing Mini Graph Card"
mkdir -p www/custom-lovelace/lovelace-mini-graph-card
wget https://github.com/kalkih/mini-graph-card/releases/download/v0.9.3/mini-graph-card-bundle.js -O www/custom-lovelace/lovelace-mini-graph-card/mini-graph-card-bundle.js

echo "Installing Mini Media Player Card"
mkdir -p www/custom-lovelace/lovelace-mini-media-player
wget https://github.com/kalkih/mini-media-player/releases/download/v1.9.1/mini-media-player-bundle.js -O www/custom-lovelace/lovelace-mini-media-player/mini-media-player-bundle.js

echo "Installing Air Purifier Card"
cp -Rp /config/assets/custom_cards/air-purifier /config/www/custom-lovelace/

echo "Bump versions in resources"
EPOCH=$(date +%s)
git checkout master -- lovelace/resources.yaml
sed -i 's/\.js/\.js?v='$EPOCH'/g' lovelace/resources.yaml