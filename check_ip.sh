#!/bin/bash
set -o nounset
set -o errexit

PUBLICIP="/tmp/publicIP"

[ -f "$PUBLICIP" ] || touch "$PUBLICIP"

CURRENT_ADDR=$(curl http://ipecho.net/plain)
PREVIOUS_ADDR=$(tail -n 1 "$PUBLICIP")

if [ "$CURRENT_ADDR" = "$PREVIOUS_ADDR"  ]
then
    exit 0
else
    echo "$CURRENT_ADDR" >> "$PUBLICIP"

    # CODE TO RUN BELOW
    curl http://<subdomain>.hopper.pw:<key>@ipv4.www.hopper.pw/nic/update




    # CODE TO RUN ABOVE
fi
