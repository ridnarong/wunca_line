#!/bin/bash
SERVICE_STATE=$1
MESSAGE=$2

PING_AVG=`ping -c 4 8.8.8.8 | tail -1 | awk '{print $4}' | cut -d '/' -f 2`

echo $PING_AVG

curl -X POST -H "Content-Type: application/json" -d "{\"value1\":\"${SERVICE_STATE}\",\"value2\":\"${MESSAGE}\",\"value3\":\"${PING_AVG}\"}" https://maker.ifttt.com/trigger/demo/with/key/XXXXXX
