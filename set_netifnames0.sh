#!/usr/bin/env bash
[[ $(whoami) == 'root' ]] || echo run as root && exit 1
grep -F 'net.ifnames=0' /boot/cmdline.txt && echo 'already set' || sed -i -e 's/^/net.ifnames=0 /g' /boot/cmdline.txt && echo 'done'
