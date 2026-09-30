#!/usr/bin/env bash
# Shell session from the video, as a script you can run.
# Each command below was typed at the prompt; the commented lines are
# what it printed back. Run it with:  bash thisfile.sh
set -u

ansible all -m ansible.builtin.ping
#   localhost | SUCCESS => {
#       "changed": false,
#       "ping": "pong"
#   }
ansible all -m ansible.builtin.debug -a msg=hello
#   localhost | SUCCESS => {
#       "msg": "hello"
#   }
