#!/usr/bin/env python3
# Ansible Configuration Management at Scale — lesson m02l03 — Dynamic Inventory
# https://learnsome.tech/courses/ansible-course/watch?lesson=m02l03
# © LearnSome.tech
"""A dynamic inventory is any program that prints this shape of JSON."""
import json
import sys

INVENTORY = {
    "webservers": {"hosts": ["web1.example.com", "web2.example.com"]},
    "dbservers": {"hosts": ["db1.example.com"]},
    "_meta": {"hostvars": {"web1.example.com": {"http_port": 8443}}},
}

if "--list" in sys.argv:
    print(json.dumps(INVENTORY, indent=2))
else:
    print(json.dumps({}))
