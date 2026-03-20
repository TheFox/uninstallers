#!/usr/bin/env bash
###
### uninstall_cyberduck.sh - Uninstaller
###
### Usage:
###   uninstall_cyberduck.sh [-h]
###
### Options:
###   -h                  Show this message.

NO_COLOR='\033[0m'
RED='\033[0;31m'
YELLOW='\033[0;33m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'

help() {
    head -50 "$0" | grep '^###' | sed 's/^###//; s/^ //'
}

if [[ "$1" == -h ]]; then
    help
    exit 1
fi

which -s brew && brew uninstall cyberduck

sudo rm -vrf /Applications/Cyberduck.app

rm -vrf ~/Library/Caches/ch.sudo.cyberduck
rm -vrf ~/Library/HTTPStorages/ch.sudo.cyberduck
rm -vrf ~/Library/Logs/Cyberduck
rm -vrf ~/Library/Preferences/ch.sudo.cyberduck.plist
rm -vrf ~/Library/'Saved Application State'/ch.sudo.cyberduck.savedState
