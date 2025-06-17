#!/bin/bash
while :
do
  state="PIA: $(piactl get connectionstate)"
  echo $state
  sleep 5
done
