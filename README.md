
# Overview
My personal [Home Assistant](https://home-assistant.io) configuration.  These are my active automations and configurations that I use every day.  Updated frequently as I add more devices and come up with more and more complicated ways to do simple tasks.

Published configruations working with Home Assistant Version: 0.79

# <a name="menu">Menu</a>
 | [Hubs](#hubs) | [Lighting](#lighting) | [Climate](#climate) | [Outlets & Switches](#outlets)| [Media](#media) | [Sensors](#sensors) | [Cameras](#cameras) |

## <a name="hubs">Hubs & Transmittors</a>

| [Go to Menu](#menu) |

| Device  | Quantity | Connection | Home Assistant | Notes |
| ------------- | :---: | ------------- | ------------- | ------------- |
| [Philips Hue Bridge 2.0](https://tweakers.net/pricewatch/467641/philips-hue-bridge-20.html) | 1 | Ethernet | [Philips Hue](https://www.home-assistant.io/components/hue/) | Used to control all Zigbee smart bulbs |
| [Rfxcom RFXtrx433E 433.92MHz Transceiver](https://tweakers.net/pricewatch/432688/rfxcom-rfxtrx433e-usb-43392mhz-transceiver.html) | 1 | USB | [RFXtrx](https://www.home-assistant.io/components/rfxtrx/) | Used to control all 433.92 MHz devices |

Relevant hub configurations can be found within [configuration.yaml](https://github.com/xblackbytesx/homeassistant-config/blob/master/configuration.yaml)

## <a name="lighting">Lighting</a>

| [Go to Menu](#menu) |

| Device  | Quantity | Connection | Home Assistant | Notes |
| ------------- | :---: | ------------- | ------------- | ------------- |
| [Philips Hue White and Color](https://tweakers.net/pricewatch/472662/philips-hue-white-and-color-e27-25000-uur-806-lumen-single-pack.html) | 7 | Ethernet | [Philips Hue Light](https://www.home-assistant.io/components/light.hue/) | Color changing smart bulbs|
| [Philips Hue White and Ambiance](https://tweakers.net/pricewatch/532927/philips-hue-white-and-ambiance-e27.html) | 2 | Hue Hub (Zigbee)| [Philips Hue Light](https://www.home-assistant.io/components/light.hue/) | Non color changing smart bulbs|
| [Philips Hue White Ambiance GU10](https://tweakers.net/pricewatch/598109/philips-hue-white-and-ambiance-gu10.html) | 4 | Hue Hub (Zigbee)| [Philips Hue Light](https://www.home-assistant.io/components/light.hue/) | Non color changing smart bulbs|
| [Innr RB 172W smart LED warm dimming](https://tweakers.net/pricewatch/578729/innr-retrofit-smart-led-lamp-e27-warm-dimming.html) | 4 | Hue Hub (Zigbee)| [Philips Hue Light](https://www.home-assistant.io/components/light.hue/) | Non color changing smart bulbs|

## <a name="climate">Climate</a>

| [Go to Menu](#menu) |

| Device  | Quantity | Connection | Home Assistant | Notes |
| ------------- | :---: | ------------- | ------------- | ------------- |
| [Nest Learning Thermostat V3](https://tweakers.net/pricewatch/461113/nest-learning-thermostat-v3-zilver.html) | 1 | Wi-Fi | [nest](https://www.home-assistant.io/components/ecobee/) | Used as primary thermostat |

## <a name="outlets">Outlets & Switches</a>

| [Go to Menu](#menu) |

| Device  | Quantity | Connection | Home Assistant | Notes |
| ------------- | :---: | ------------- | ------------- | ------------- |
| [KlikAanKlikUit APA3-1500R](https://tweakers.net/pricewatch/312138/klikaanklikuit-apa3-1500r-3-kanaals-afstandsbediening-+-stekkerdoos-schakelaars.html) | 3 | 433.92 MHz | [RFXtrx Switch](https://www.home-assistant.io/components/switch.rfxtrx/) | Smart outlets utilized to control various devices via powering the outlet on/off (fans, Christmas Tree, etc) |
| [KlikAanKlikUit ACD-300](https://tweakers.net/pricewatch/312122/klikaanklikuit-acd-300.html) | 2 | 433.92 MHz | [RFXtrx Light](https://www.home-assistant.io/components/light.rfxtrx/) | Dimming smart outlets |
| [KlikAanKlikUit AWST-8800](https://tweakers.net/pricewatch/312113/klikaanklikuit-awst-8800-draadloze-wandschakelaar.html) | 1 | 433.92 MHz | [RFXtrx Switch](https://www.home-assistant.io/components/switch.rfxtrx/) | Wireless single buttoned switch |
| [KlikAanKlikUit AWST-8802](https://tweakers.net/pricewatch/311371/klikaanklikuit-awst-8802-draadloze-dubbele-wandschakelaar.html) | 3 | 433.92 MHz | [RFXtrx Switch](https://www.home-assistant.io/components/switch.rfxtrx/) | Wireless double buttoned switch |

## <a name="media">Media</a>

| [Go to Menu](#menu) |

| Device  | Quantity | Connection | Home Assistant | Notes |
| ------------- | :---: | ------------- | ------------- | ------------- |
| [Kodi](https://kodi.tv) | 1 | Ethernet | [Kodi](https://www.home-assistant.io/components/media_player.kodi) |  Media Server and Client |  

## <a name="sensors">Sensors</a>

| [Go to Menu](#menu) |

| Device  | Quantity | Connection | Home Assistant | Notes |
| ------------- | :---: | ------------- | ------------- | ------------- |
| [Philips Hue motion sensor](https://tweakers.net/pricewatch/598107/philips-hue-motion-sensor.html) | 5 | Hue Hub (Zigbee) | [Rest](https://www.home-assistant.io/components/sensor.rest/) | Motion, Lumen and temperature detection |
| [KlikAanKlikUit AWST-6000](https://tweakers.net/pricewatch/311373/klikaanklikuit-awst-6000.html) | 2 | 433.92 MHz | [RFXtrx Binary Sensor](https://www.home-assistant.io/components/binary_sensor.rfxtrx/) | Motion detection |
| [KlikAanKlikUit AWST-606](https://tweakers.net/pricewatch/364772/klikaanklikuit-draadloze-deur-raam-sensor-amst-606.html) | 2 | 433.92 MHz | [RFXtrx Binary Sensor](https://www.home-assistant.io/components/binary_sensor.rfxtrx/) | Door/Window sensor |

## <a name="cameras">Cameras</a>

| [Go to Menu](#menu) |

| Device  | Quantity | Connection | Home Assistant | Notes |
| ------------- | :---: | ------------- | ------------- | ------------- |
| [Foscam FI9831W](https://tweakers.net/pricewatch/358510/foscam-fi9831w-zwart.html) | 1 | Wi-Fi | [Foscam IP Camera](https://www.home-assistant.io/components/camera.foscam/) | 720p Wi-Fi Camera. |

Nothing is currently automated around cameras.

| [Go to Menu](#menu) |
