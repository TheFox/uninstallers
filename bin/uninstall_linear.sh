#!/usr/bin/env bash
###
### uninstall.sh - Uninstaller
###
### Usage:
###   uninstall.sh [-h]
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

sudo rm -vrf /Applications/Linear.app

rm -rf ~/Library/'Application Support'/Linear
rm -rf ~/Library/HTTPStorages/com.linear
rm -rf ~/Library/Logs/Linear
rm -rf ~/Library/Preferences/ByHost/com.linear.ShipIt.*.plist
rm -rf ~/Library/Preferences/com.linear.plist
