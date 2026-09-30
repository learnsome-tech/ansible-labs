#!/usr/bin/env bash
# Shell session from the video, as a script you can run.
# Each command below was typed at the prompt; the commented lines are
# what it printed back. Run it with:  bash thisfile.sh
set -u

ansible all -m ansible.builtin.command -a "echo hello"
#   localhost | CHANGED | rc=0 >>
#   hello
ansible all -m ansible.builtin.setup -a filter=ansible_system
#   localhost | SUCCESS => {
#       "ansible_facts": {
#           "ansible_system": "Linux"
#       },
#       "changed": false
#   }
