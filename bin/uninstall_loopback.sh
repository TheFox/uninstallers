#!/usr/bin/env bash
###
### uninstall_loopback.sh - Uninstaller
###
### Usage:
###   uninstall_loopback.sh [-h]
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

which -s brew && brew uninstall loopback

rm -vrf ~/'Library/Application Support/Loopback'
rm -vrf ~/'Library/Saved Application State/com.rogueamoeba.Loopback.savedState'
rm -vrf ~/Library/WebKit/com.rogueamoeba.Loopback
rm -vrf ~/Library/Preferences/com.rogueamoeba.loopbackd.plist
rm -vrf ~/Library/Preferences/com.rogueamoeba.Loopback.plist
rm -vrf ~/Library/LaunchAgents/com.rogueamoeba.loopbackd.plist
rm -vrf ~/Library/Caches/com.rogueamoeba.loopbackd
rm -vrf ~/Library/Caches/com.rogueamoeba.Loopback
