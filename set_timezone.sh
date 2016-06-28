#!/bin/bash

sudo sh -c "echo 'Asia/Tokyo' > /etc/timezone"
sudo dpkg-reconfigure --frontend noninteractive tzdata

