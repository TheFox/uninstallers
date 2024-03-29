#!/usr/bin/env bash
###
### uninstall_ableton.sh - Uninstaller
###
### Usage:
###   uninstall_ableton.sh [-h]
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

which -s brew && brew uninstall ableton-live-lite ableton-live-lite10

sudo rm -vrf '/Applications/Ableton Live 11 Trial.app'
sudo rm -vrf '/Applications/Ableton Live 11 Lite.app'

rm -vrf ~/'Library/Application Support/Ableton'
rm -vrf ~/Library/'Application Support/CrashReporter/Ableton Index_'*.plist
rm -vrf ~/'Library/Saved Application State/com.ableton.live.savedState'
rm -vrf ~/'Library/Preferences/Ableton/Live 10.1.30'
rm -vrf ~/'Library/Preferences/Ableton/Live 11.0.6'
rm -vrf ~/Library/Preferences/com.ableton.live.plist
rm -vrf ~/Library/Preferences/Ableton
rm -vrf ~/Library/WebKit/com.ableton.live
rm -vrf ~/Library/HTTPStorages/'Ableton Plugin Scanner'
