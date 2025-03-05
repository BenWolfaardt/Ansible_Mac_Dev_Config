#!/bin/sh
ansible-playbook -i "localhost," -c local main.yml --ask-become-pass
# TODO: figure out why it keeps asking for the password
# - Logi Options
# - Yubico-yubikey