#!/usr/bin/env bash

# sudo apt install libnotify-bin

while true; do
  MEM=$(free -th | grep Total | awk '{print $3}')
  CPU=$(grep 'cpu ' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)} END {print usage "%"}')
  notify-send -t 900 СИСТЕМА "ПАМЯТЬ__: $MEM\nПРОЦ_____: $CPU"
  sleep 1
done
