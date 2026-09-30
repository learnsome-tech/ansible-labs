#!/usr/bin/env bash
# Shell session from the video, as a script you can run.
# Each command below was typed at the prompt; the commented lines are
# what it printed back. Run it with:  bash thisfile.sh
set -u

ansible all -m file -a "path=demo state=directory" | head -2
#   localhost | CHANGED => {
#       "changed": true,
ansible all -m file -a "path=demo state=directory" | head -2
#   localhost | SUCCESS => {
#       "changed": false,
