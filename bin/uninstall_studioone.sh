#!/usr/bin/env bash
###
### uninstall_studioone.sh - Uninstaller
###
### Usage:
###   uninstall_studioone.sh [-h]
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

sudo rm -vrf '/Applications/Studio One 5.app'

rm -vrf ~/'Library/Application Support/PreSonus/Studio One 5'
rm -vrf ~/'Library/Saved Application State/com.presonus.studioone2.savedState'
rm -vf ~/Library/Preferences/com.presonus.studioone2.plist
rm -vf ~/Library/Audio/Plug-Ins/Support/Splice/license/studioone5.lic
