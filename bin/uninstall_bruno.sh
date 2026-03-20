#!/usr/bin/env bash
###
### uninstall_bruno.sh - Uninstaller
###
### Usage:
###   uninstall_bruno.sh [-h]
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

which -s brew && brew uninstall bruno

sudo rm -vrf /Applications/Bruno.app

rm -vrf ~/Library/HTTPStorages/com.usebruno.app
rm -vrf ~/Library/Logs/bruno
rm -vrf ~/Library/Preferences/ByHost/com.usebruno.app.ShipIt.*.plist
rm -vrf ~/Library/Preferences/com.usebruno.app.plist
