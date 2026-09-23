#!/usr/bin/env bash
# Ansible Configuration Management at Scale — lesson m02l03 — Dynamic Inventory
# https://learnsome.tech/courses/ansible-course/watch?lesson=m02l03
# © LearnSome.tech
# Shell session from the video, as a script you can run.
# Each command below was typed at the prompt; the commented lines are
# what it printed back. Run it with:  bash thisfile.sh
set -u

chmod +x dynamic.py
ansible-inventory -i dynamic.py --graph
#   @all:
#     |--@ungrouped:
#     |--@webservers:
#     |  |--web1.example.com
#     |  |--web2.example.com
#     |--@dbservers:
#     |  |--db1.example.com
ansible-inventory -i dynamic.py --host web1.example.com
#   {
#       "http_port": 8443
#   }
