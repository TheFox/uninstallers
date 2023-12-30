#!/usr/bin/env bash
###
### uninstall_elevenrack.sh - Uninstaller
###
### Usage:
###   uninstall_elevenrack.sh [-h]
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

sudo rm -vrf '/Library/Application Support/Digidesign'
sudo rm -vrf /Library/Extensions/DigidesignElevenRack.kext
sudo rm -vrf /Library/LaunchDaemons/com.digidesign.elevenrack.helper.plist

sudo rm -vrf '/Library/Audio/MIDI Devices/Digidesign Device List.middev'
sudo rm -vrf '/Library/Audio/MIDI Devices/Generic/Images/Digidesign_MIDI_IO.tiff'
sudo rm -vrf '/Library/Audio/MIDI Devices/Generic/Images/Digidesign_PRE.tiff'

sudo rm -vrf '/Library/PreferencePanes/Digidesign Eleven Rack.prefPane'
sudo rm -vrf '/Library/User Template/Non_localized/Library/Audio/Plug-Ins/Digidesign'

rm -vrf ~/'Library/Application Support/Digidesign'
