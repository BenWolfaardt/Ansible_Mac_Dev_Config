#!/bin/sh
ansible-playbook -i "localhost," -c local main.yml --ask-become-pass