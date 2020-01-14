#!/bin/sh
# authenticate.sh
# Tuomas Siren <tuomas.siren@tuomassiren.com>

EMAIL=$1
USER_AGENT=`basename $0`
PASSWORD=$2

curl \
    -s \
    -X POST \
    -H "Content-Type: application/json" \
    -H "User-Agent: ${USER_AGENT}" \
    -d "{ \"grant_type\": \"password\", \"client_id\": \"81527cff06843c8634fdc09e8ac0abefb46ac849f38fe1e431c2ef2106796384\", \"client_secret\": \"c7257eb71a564034f9419ee651c7d0e5f7aa6bfbd18bafb5c5c033b093bb2fa3\", \"email\": \"${EMAIL}\", \"password\": \"${PASSWORD}\" }" \
    https://owner-api.teslamotors.com/oauth/token | \
    jq
