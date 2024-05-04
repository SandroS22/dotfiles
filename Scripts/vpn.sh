#!/usr/bin/env sh

vpn="UFSC"
CONNECTION_NAME=$vpn

if [[  -n $(nmcli connection show $CONNECTION_NAME | grep "is already active") ]]; then
  nmcli connection down $CONNECTION_NAME;
else
  nmcli connection up $CONNECTION_NAME;
fi
