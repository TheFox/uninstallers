#!/usr/bin/env bash
###
### uninstall_reaper.sh - Uninstaller
###
### Usage:
###   uninstall_reaper.sh [-h]
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

which -s brew && brew uninstall reaper

rm -vrf ~/'Library/Application Support/REAPER'
rm -vrf ~/'Library/Saved Application State/com.cockos.reaper.savedState'
rm -vrf ~/'Library/Saved Application State/com.cockos.ReaMote.savedState'
rm -vrf ~/Library/Preferences/com.cockos.reaper.plist
