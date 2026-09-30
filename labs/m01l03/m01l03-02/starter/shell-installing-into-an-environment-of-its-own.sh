#!/usr/bin/env bash
# Shell session from the video, as a script you can run.
# Each command below was typed at the prompt; the commented lines are
# what it printed back. Run it with:  bash thisfile.sh
set -u

python3 -m venv .venv
source .venv/bin/activate
pip install --quiet ansible-core
ansible --version | head -1
#   ansible [core 2.21.4]
