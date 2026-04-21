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

which -s brew && brew uninstall postman

sudo rm -rf /Applications/Postman.app

rm -rf ~/Library/'Application Support'/Postman
rm -rf ~/Library/Caches/com.postmanlabs.mac
rm -rf ~/Library/Caches/com.postmanlabs.mac.ShipIt
rm -rf ~/Library/HTTPStorages/com.postmanlabs.mac
rm -rf ~/Library/Logs/Postman
rm -rf ~/Library/Preferences/ByHost/com.postmanlabs.mac.ShipIt.*.plist
rm -rf ~/Library/Preferences/com.electron.postman.helper.plist
rm -rf ~/Library/Preferences/com.postmanlabs.mac.plist
