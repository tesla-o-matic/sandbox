#!/bin/sh
# vehicle_data.sh
# Tuomas Siren <tuomas.siren@tuomassiren.com>

ACCESS_TOKEN=$1
USER_AGENT=`basename $0`
VEHICLE_ID=$2

curl \
    -s \
    -H "Authorization: Bearer ${ACCESS_TOKEN}" \
    -H "User-Agent: ${USER_AGENT}" \
    https://owner-api.teslamotors.com/api/1/vehicles/${VEHICLE_ID}/vehicle_data | \
    jq .
    
