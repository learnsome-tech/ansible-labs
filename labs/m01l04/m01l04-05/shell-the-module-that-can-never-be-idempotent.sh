#!/usr/bin/env bash
# Ansible Configuration Management at Scale — lesson m01l04 — Your First Ad Hoc Command
# https://learnsome.tech/courses/ansible-course/watch?lesson=m01l04
# © LearnSome.tech
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
#           "ansible_system": "Darwin"
#       },
#       "changed": false
#   }
