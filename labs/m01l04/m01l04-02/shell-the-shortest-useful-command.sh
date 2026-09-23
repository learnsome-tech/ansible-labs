#!/usr/bin/env bash
# Ansible Configuration Management at Scale — lesson m01l04 — Your First Ad Hoc Command
# https://learnsome.tech/courses/ansible-course/watch?lesson=m01l04
# © LearnSome.tech
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
