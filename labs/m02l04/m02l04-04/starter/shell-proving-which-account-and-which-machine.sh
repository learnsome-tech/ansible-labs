#!/usr/bin/env bash
# Shell session from the video, as a script you can run.
# Each command below was typed at the prompt; the commented lines are
# what it printed back. Run it with:  bash thisfile.sh
set -u

ansible localhost -m ansible.builtin.command -a "uname -s"
#   localhost | CHANGED | rc=0 >>
#   Darwin
ansible localhost -m ansible.builtin.command -a "id -u"
#   localhost | CHANGED | rc=0 >>
#   502
