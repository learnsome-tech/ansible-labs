#!/usr/bin/env bash
# Ansible Configuration Management at Scale — lesson m02l03 — Dynamic Inventory
# https://learnsome.tech/courses/ansible-course/watch?lesson=m02l03
# © LearnSome.tech
# The command this panel ran.
set -u
ansible-inventory -i inventory -i constructed.yml --graph
