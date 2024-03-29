#!/usr/bin/env bash
###
### uninstall_diablo3.sh - Uninstaller
###
### Usage:
###   uninstall_diablo3.sh [-h]
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

sudo rm -vrf '/Applications/Diablo III'

rm -vrf ~/'Library/Application Support/Blizzard/Diablo III'
rm -vrf ~/'Library/Saved Application State/com.blizzard.diablo3.savedState'
rm -vrf ~/Library/Preferences/com.blizzard.diablo3.plist
rm -vrf ~/Library/Caches/com.blizzard.diablo3
