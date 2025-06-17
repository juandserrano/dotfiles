#!/bin/bash

while : 
do
  state=$(tailscale status)
  if [ "$state" = "Tailscale is stopped." ]; then
    echo ''
  else
    echo 'Tailscale'
  fi
  sleep 5
done
