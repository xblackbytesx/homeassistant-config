#!/bin/bash

foldername=$(date +%Y%m%d)
backuplocation=/home/$USER/projects/homeassistant-config/remote_bak/"$foldername"
rm -rf "$backuplocation"
echo "Backup location is $backuplocation"

mkdir -p "$backuplocation"

echo "Backing up assets dir"
scp -r hassos:/config/assets "$backuplocation"

echo "Backing up secrets"
scp hassos:/config/secrets.yaml "$backuplocation"

echo "Backing up .storage"
scp -r hassos:/config/.storage "$backuplocation"

scp hassos:/config/nest.conf "$backuplocation"
scp hassos:/config/privkey.pem "$backuplocation"
scp hassos:/config/certificate.pem "$backuplocation"
scp hassos:/config/philips-hue.conf "$backuplocation"

echo "Done!"