#!/usr/bin/env bash
###
### uninstall_zap.sh - Uninstaller
###
### Usage:
###   uninstall_zap.sh [-h]
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

which -s brew && brew uninstall zap

rm -vrf /Applications/ZAP.app
rm -vrf ~/Library/'Application Support'/ZAP
rm -f ~/Library/Preferences/org.zaproxy.zap.plist
rm -f ~/Library/Preferences/org.zaproxy.addon.plist
