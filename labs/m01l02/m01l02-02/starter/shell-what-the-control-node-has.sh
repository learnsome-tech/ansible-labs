#!/usr/bin/env bash
# Shell session from the video, as a script you can run.
# Each command below was typed at the prompt; the commented lines are
# what it printed back. Run it with:  bash thisfile.sh
set -u

ansible --version | head -1
#   ansible [core 2.21.4]
ansible-doc -l ansible.builtin | head -4
#   ansible.builtin.add_host               Add a host (and alternatively a grou...
#   ansible.builtin.apt                    Manages apt-packages
#   ansible.builtin.apt_key                Add or remove an apt key
#   ansible.builtin.apt_repository         Add and remove APT repositories
