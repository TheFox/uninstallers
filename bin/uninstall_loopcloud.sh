#!/usr/bin/env bash
###
### uninstall_loopcloud.sh - Uninstaller
###
### Usage:
###   uninstall_loopcloud.sh [-h]
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

sudo rm -vrf /Applications/Loopcloud.app

sudo rm -vrf /Library/Audio/Plug-Ins/VST/Loopmasters

sudo rm -vrf '/Library/Application Support/Loopcloud'
sudo rm -vrf '/Library/Application Support/Loopmasters'

sudo rm -vrf '/Library/Audio/Plug-Ins/VST/Loopcloud.vst'
sudo rm -vrf '/Library/Audio/Plug-Ins/VST3/Loopcloud Play.vst3'
sudo rm -vrf '/Library/Audio/Plug-Ins/VST3/Loopcloud Drum.vst3'

sudo rm -vrf '/Library/Audio/Plug-Ins/Components/Loopcloud.component'
sudo rm -vrf '/Library/Audio/Plug-Ins/Components/Loopcloud Play.component'
sudo rm -vrf '/Library/Audio/Plug-Ins/Components/Loopcloud Drum.component'

sudo rm -vrf '/Library/Application Support/Avid/Audio/Plug-Ins/Loopcloud.aaxplugin'

rm -vrf ~/'Library/Saved Application State/com.loopmasters.Loopcloud.savedState'
rm -vrf ~/Library/Preferences/com.loopmasters.Loopcloud.plist
rm -vrf ~/Library/Caches/Loopcloud
rm -vrf ~/Library/Loopcloud
