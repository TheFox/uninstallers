#!/usr/bin/env bash
###
### uninstall_xpand.sh - Uninstaller
###
### Usage:
###   uninstall_xpand.sh [-h]
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

sudo rm -vrf '/Applications/AIR Music Technology/Xpand!2'

sudo rm -vrf '/Library/Audio/Plug-Ins/VST/Xpand!2.vst'
sudo rm -vrf '/Library/Audio/Plug-Ins/Components/Xpand!2.component'

rm -vrf ~/'Library/Preferences/com.airmusictech.Xpand!2.plist'
