#!/bin/bash
while :
do
  state="$(piactl get connectionstate)"
  if [ "$state" = "Disconnected" ]; then
    echo ''
  else
    echo ''
  fi
  sleep 5
done
