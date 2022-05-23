#!/usr/bin/env bash
###
### uninstall_eveonline.sh - Uninstaller
###
### Usage:
###   uninstall_eveonline.sh [-h]
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

which -s brew && brew uninstall eve-launcher

sudo rm -vrf '/Applications/EVE Launcher.app'

rm -vrf ~/'Library/Saved Application State/com.ccpgames.evelauncher.savedState'
rm -vrf ~/'Library/Application Support/CCP/EVE'
rm -vrf ~/'Library/Application Support/EVE Online'
rm -vrf ~/Library/Preferences/com.ccpgames.EVE.plist
rm -vrf ~/Library/Caches/com.ccpgames.evelauncher
