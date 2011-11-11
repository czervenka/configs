#!/bin/bash

if [ ! -z "$(tmux list-sessions)" ]; then
    TERM=screen-256color /usr/bin/tmux -2 attach "$@"
else
    TERM=screen-256color /usr/bin/tmux -2 "$@"
fi
