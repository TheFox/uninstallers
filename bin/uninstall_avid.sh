#!/usr/bin/env bash
###
### uninstall_avid.sh - Uninstaller
###
### Usage:
###   uninstall_avid.sh [-h]
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

sudo rm -vrf /Applications/Avid
sudo rm -vrf /Applications/Avid_Uninstallers
sudo rm -vrf /Library/'Application Support'/Avid
sudo rm -vrf /Library/Audio/'MIDI Patch Names'/Avid

rm -vrf ~/Library/'Application Support'/Avid
rm -vrf ~/Library/Preferences/Avid
rm -vrf ~/Library/Logs/Avid
rm -vrf ~/Library/Caches/Avid
rm -vrf ~/Library/'Saved Application State'/com.avid.AvidLink.uninstall.savedState
rm -vrf ~/Library/'Saved Application State'/com.avid.cloud.client.services.uninstaller.savedState
rm -vrf ~/Library/'Saved Application State'/com.avid.ProTools.savedState
rm -vrf ~/Library/WebKit/com.avid.ProTools
rm -vrf ~/Library/Preferences/'com.avid.Avid Link.plist'
rm -vrf ~/Library/Preferences/com.avid.ProTools.plist
rm -vrf ~/Library/Logs/com.avid.AvidLink.uninstall.log
rm -vrf ~/Library/Logs/com.avid.cloud.client.services.uninstaller.log
rm -vrf ~/Library/Caches/com.avid.ProTools
