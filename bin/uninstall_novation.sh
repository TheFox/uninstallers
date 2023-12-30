#!/usr/bin/env bash
###
### uninstall_novation.sh - Uninstaller
###
### Usage:
###   uninstall_novation.sh [-h]
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

# kextcache --clear-staging
# sudo -vrf /Library/StagedExtensions/Library/Extensions/NovationUSBAudio.kext
# sudo -vrf /Library/StagedExtensions/System/Library/Extensions/NovationUSBAudio.kext

sudo rm -vrf /Applications/Components.app
sudo rm -vrf /Library/Extensions/NovationUSBAudio.kext
sudo rm -vrf '/Library/Audio/MIDI Drivers/NovationUSBMIDIDriver.plugin'

rm -vrf ~/'Library/Saved Application State/com.novationmusic.circuitcomponents.savedState'

rm -vrf ~/Library/Preferences/com.novationmusic.circuitcomponents.plist
rm -vrf ~/Library/Preferences/ByHost/com.novationmusic.circuitcomponents.ShipIt.*.plist
rm -vrf ~/Library/HTTPStorages/com.novationmusic.circuitcomponents

rm -vrf ~/Library/Caches/com.novationmusic.circuitcomponents
rm -vrf ~/Library/Caches/com.novationmusic.circuitcomponents.ShipIt
