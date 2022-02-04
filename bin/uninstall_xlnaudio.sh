#!/usr/bin/env bash
###
### uninstall_xlnaudio.sh - Uninstaller
###
### Usage:
###   uninstall_xlnaudio.sh [-h]
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

sudo rm -vrf '/Applications/XLN Audio'
sudo rm -vrf '/Applications/XLN Online Installer.app'
sudo rm -vrf '/Library/Application Support/XLN Audio'
sudo rm -vrf /Library/'Application Support/Avid/Audio/Plug-Ins/RC-20 Retro Color.aaxplugin'
sudo rm -vrf /Library/'Application Support/XLN Audio/RC-20 Retro Color'
sudo rm -vrf /Library/Audio/Plug-Ins/Components/'RC-20 Retro Color.component'
sudo rm -vrf /Library/Audio/Plug-Ins/VST/'RC-20 Retro Color.vst'

rm -vrf ~/Library/'Application Support/XLN Cloud Sync'
rm -vrf ~/Library/'Application Support/XLN Online Installer'
rm -vrf ~/Library/'Application Support/RC-20 Retro Color'

rm -vrf ~/Library/Preferences/ByHost/com.xlnaudio.addictivedrums2.*.plist
rm -vrf ~/Library/Preferences/ByHost/com.xlnaudio.addictivekeys.*.plist
rm -vrf ~/Library/Preferences/ByHost/com.xlnaudio.addictivetrigger.*.plist
rm -vrf ~/Library/Preferences/ByHost/com.xlnaudio.ds-10drumshaper.*.plist
rm -vrf ~/Library/Preferences/ByHost/com.xlnaudio.rc-20retrocolor.*.plist
rm -vrf ~/Library/Preferences/ByHost/com.xlnaudio.xo.*.plist

rm -vrf ~/'Library/Saved Application State/com.xlnaudio.addictivedrums2.savedState'
rm -vrf ~/'Library/Saved Application State/com.xlnaudio.addictivekeys.savedState'
rm -vrf ~/'Library/Saved Application State/com.xlnaudio.xo.savedState'
