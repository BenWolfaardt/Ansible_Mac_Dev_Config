#!/bin/sh
uv tool run --from ansible-core ansible-playbook -i "localhost," -c local main.yml --ask-become-pass
