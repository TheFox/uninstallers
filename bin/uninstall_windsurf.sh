#!/usr/bin/env bash
###
### uninstall_windsurf.sh - Uninstaller
###
### Usage:
###   uninstall_windsurf.sh [-h]
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

which -s brew && brew uninstall windsurf

rm -rf /Applications/Windsurf.app
rm -rf ~/'Library/Application Support/Windsurf'

rm -rf ~/Library/Caches/com.exafunction.windsurf
rm -rf ~/Library/Caches/com.exafunction.windsurf.ShipIt
rm -rf ~/Library/Preferences/com.exafunction.windsurf.plist
