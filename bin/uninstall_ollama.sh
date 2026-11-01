#!/usr/bin/env bash
###
### uninstall.sh - Uninstaller
###
### Usage:
###   uninstall.sh [-h]
###
### Options:
###   -h                  Show this message.

help() {
    head -50 "$0" | grep '^###' | sed 's/^###//; s/^ //'
}

if [[ "$1" == -h ]]; then
    help
    exit 1
fi

which -s brew && brew uninstall ollama

rm -vrf ~/.ollama
