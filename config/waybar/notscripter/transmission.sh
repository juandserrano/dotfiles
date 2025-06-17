#!/bin/bash

while : 
do
  state=$(pgrep -f transmission-daemon)
  if [ -z "${state}" ]; then
    echo ''
  else
    echo 'Torrenting'
  fi
  sleep 5
done
