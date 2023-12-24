#!/usr/bin/env bash
###
### uninstall_flstudio.sh - Uninstaller
###
### Usage:
###   uninstall_flstudio.sh [-h]
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

which -s brew && brew uninstall fl-studio

sudo rm -rf '/Applications/FL Studio 20.app'
sudo rm -rf '/Applications/FL Studio 21.app'
sudo rm -vrf /Library/Preferences/Image-Line
sudo rm -vrf '/Library/Audio/Plug-Ins/VST/FL Studio VSTi.vst'
sudo rm -vrf '/Library/Audio/Plug-Ins/Components/FL Studio.component'

rm -vrf ~/'Library/Saved Application State/com.image-line.flstudio.savedState'
rm -vrf ~/'Library/Saved Application State/com.image-line.ControlCreator.savedState'
rm -vrf ~/'Library/Saved Application State/com.image-line.PluginManager.savedState'
rm -vrf ~/'Library/Saved Application State/com.image-line.Diagnostics.savedState'

rm -vrf ~/'Library/Application Support/Image-Line'
rm -vrf ~/Library/Caches/com.image-line.Diagnostics
rm -vrf ~/Library/Caches/com.image-line.flstudio
rm -vrf ~/Library/HTTPStorages/com.image-line.Diagnostics
rm -vrf ~/Library/HTTPStorages/com.image-line.flstudio
rm -vrf ~/Library/Preferences/com.image-line.flstudio.plist
rm -vrf ~/Library/Preferences/com.image-line.PluginManager.plist
rm -vrf ~/Library/Preferences/com.image-line.shared.plist
rm -vrf ~/Library/Preferences/Image-Line
rm -vrf ~/Library/WebKit/com.image-line.flstudio
