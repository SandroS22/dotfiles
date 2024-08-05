#!/bin/bash

CONNECTION_NAME="UFSC"
IS_ACTIVE=$(nmcli connection show --active | grep "$CONNECTION_NAME")
if [ -z  "$IS_ACTIVE" ]; then
  nmcli connection up $CONNECTION_NAME;
else
  nmcli connection down $CONNECTION_NAME;
fi
