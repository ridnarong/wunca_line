#!/bin/bash

# Get information from system
CPU_LOAD="1.2%"
MEMORY="70%"

# Register image hosting service at https://cloudinary.com
# Create Upload presets: https://cloudinary.com/console/settings/upload#upload_presets with unsign mode

IMAGE_URL=`curl -F "upload_preset=yhl3paik" -F "file=@/home/ridnarong/wunca_line/cacti/cat.jpg"   https://api.cloudinary.com/v1_1/de4rcte2l/image/upload| cut -d"," -f13`

curl -X POST -H "Content-Type: application/json" -d "{\"value1\":\"${CPU_LOAD}\", \"value2\":\"${MEMORY}\", \"value3\":${IMAGE_URL:6}}" https://maker.ifttt.com/trigger/demo/with/key/dAg8ZR9VJZBPKCyQKS_EiR
