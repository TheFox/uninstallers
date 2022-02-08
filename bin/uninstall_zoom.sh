#!/usr/bin/env bash
###
### uninstall_zoom.sh - Uninstaller
###
### Usage:
###   uninstall_zoom.sh [-h]
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

which -s brew && brew uninstall zoomus

sudo rm -vrf /Applications/zoom.us.app

rm -vrf ~/'Library/Application Support/zoom.us'
rm -vrf ~/'Library/Saved Application State/us.zoom.xos.savedState'
rm -vrf ~/'Library/Group Containers/BJ4HAAB9B3.ZoomClient3rd'
rm -vrf ~/Library/Preferences/ZoomChat.plist
rm -vrf ~/Library/Preferences/us.zoom.xos.plist
rm -vrf ~/Library/Logs/zoom.us
rm -vrf ~/Library/Logs/ZoomPhone
rm -vrf ~/Library/Logs/zoominstall.log
rm -vrf ~/Library/Cookies/us.zoom.xos.binarycookies
rm -vrf ~/Library/Caches/us.zoom.xos
