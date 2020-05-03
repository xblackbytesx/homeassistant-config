#!/bin/bash

scp -r /home/$USER/projects/homeassistant-config/assets hassos:/config
scp /home/$USER/projects/homeassistant-config/restore-assets.sh hassos:/config
scp /home/$USER/projects/homeassistant-config/secrets.yaml hassos:/config
scp /home/$USER/projects/homeassistant-config/nest.conf hassos:/config
scp /home/$USER/projects/homeassistant-config/privkey.pem hassos:/config
scp /home/$USER/projects/homeassistant-config/certificate.pem hassos:/config
scp /home/$USER/projects/homeassistant-config/philips-hue.conf hassos:/config
