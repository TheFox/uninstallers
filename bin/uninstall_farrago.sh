#!/usr/bin/env bash
###
### uninstall_farrago.sh - Uninstaller
###
### Usage:
###   uninstall_farrago.sh [-h]
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

which -s brew && brew uninstall farrago

rm -vrf ~/'Library/Application Support/Farrago'
rm -vrf ~/'Library/Saved Application State/com.rogueamoeba.farrago.savedState'
rm -vf ~/Library/Preferences/com.rogueamoeba.farrago.plist
rm -vrf ~/Library/Caches/com.rogueamoeba.farrago Library/WebKit/com.rogueamoeba.farrago
