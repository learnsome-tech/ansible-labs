#!/usr/bin/env bash
# The command this panel ran.
set -u
ansible-inventory -i inventory.yml --graph
