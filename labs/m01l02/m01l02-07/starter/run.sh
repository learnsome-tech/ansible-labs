#!/usr/bin/env bash
# The command this panel ran.
set -u
ansible all -m ansible.builtin.ping
