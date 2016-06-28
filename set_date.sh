#!/bin/bash

sudo date -s "$(curl -s --head http://www.google.co.jp | grep '^Date' | cut -b 7-)"
