#!/bin/bash
[[ `dpkg -l | grep raspi2`  ]] || exit 1
echo linux-image-raspi2 hold | sudo dpkg --set-selections
echo linux-headers-raspi2 hold | sudo dpkg --set-selections
dpkg --get-selections | grep hold
