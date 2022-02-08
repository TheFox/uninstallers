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

sudo rm -vrf '/Library/Audio/Plug-Ins/VST/FL Studio VSTi.vst'

rm -vrf ~/'Library/Saved Application State/com.image-line.flstudio.savedState'
rm -vrf ~/Library/Preferences/com.image-line.flstudio.plist
rm -vrf ~/Library/Caches/com.image-line.flstudio
