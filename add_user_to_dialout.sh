#!/bin/bash

if [[ `groups | grep dialout`  ]]; then echo "nothing to do"; else (sudo gpasswd -a $USER dialout); fi
