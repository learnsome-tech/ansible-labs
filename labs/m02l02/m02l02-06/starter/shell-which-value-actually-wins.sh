#!/usr/bin/env bash
# Shell session from the video, as a script you can run.
# Each command below was typed at the prompt; the commented lines are
# what it printed back. Run it with:  bash thisfile.sh
set -u

ansible-inventory --host web1.example.com
#   {
#       "document_root": "/srv/www",
#       "http_port": 8443,
#       "site_name": "shop"
#   }
ansible-inventory --host web2.example.com
#   {
#       "document_root": "/srv/www",
#       "http_port": 8080,
#       "site_name": "shop"
#   }
ansible-inventory --host db1.example.com
#   {
#       "http_port": 80,
#       "site_name": "shop"
#   }
