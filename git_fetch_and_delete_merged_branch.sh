#!/bin/bash -xve

git fetch --prune 2>&1 | grep deleted | sed -e "s#.*origin/\(.*\)#\1#g" | xargs git branch -D

