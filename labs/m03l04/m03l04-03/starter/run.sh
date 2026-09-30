#!/usr/bin/env bash
# The command this panel ran.
set -u
ansible-playbook --check --diff preview.yml
