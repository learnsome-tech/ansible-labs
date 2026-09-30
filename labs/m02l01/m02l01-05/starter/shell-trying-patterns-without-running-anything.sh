#!/usr/bin/env bash
# Shell session from the video, as a script you can run.
# Each command below was typed at the prompt; the commented lines are
# what it printed back. Run it with:  bash thisfile.sh
set -u

ansible production --list-hosts
#     hosts (5):
#       web1.example.com
#       web2.example.com
#       web3.example.com
#       db1.example.com
#       db2.example.com
ansible 'production:!dbservers' --list-hosts
#     hosts (3):
#       web1.example.com
#       web2.example.com
#       web3.example.com
ansible 'db*' --list-hosts
#     hosts (2):
#       db1.example.com
#       db2.example.com
