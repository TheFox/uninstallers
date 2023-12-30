#!/usr/bin/env bash
###
### uninstall_roland.sh - Uninstaller
###
### Usage:
###   uninstall_roland.sh [-h]
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

sudo rm -vrf /Library/Extensions/RDUSB0171Dev.kext
sudo rm -vrf '/Library/Application Support/RolandDrv'
sudo rm -vrf /Library/Preferences/jp_co_roland_RDUSB0171Dev.pref.plist
sudo rm -vrf /Library/LaunchDaemons/jp.co.roland.RDUSB0171Setupd.plist

rm -vrf ~/'Library/Saved Application State/jp.co.roland.BOSS-TONE-STUDIO-for-RC.savedState'
rm -vrf ~/Library/Preferences/jp.co.roland.BOSS-TONE-STUDIO-for-RC.plist
rm -vrf ~/Library/Caches/jp.co.roland.BOSS-TONE-STUDIO-for-RC
