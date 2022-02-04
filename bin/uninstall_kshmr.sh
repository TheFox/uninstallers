#!/usr/bin/env bash
###
### uninstall_kshmr.sh - Uninstaller
###
### Usage:
###   uninstall_kshmr.sh [-h]
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

sudo rm -vrf '/Library/Application Support/Avid/Audio/Plug-Ins/KSHMREssentialsKick.aaxplugin'
sudo rm -vrf /Library/Audio/Plug-Ins/Components/KSHMREssentialsKick.component
sudo rm -vrf /Library/Audio/Plug-Ins/VST/KSHMREssentialsKick.vst
sudo rm -vrf /Library/Audio/Plug-Ins/VST3/KSHMREssentialsKick.vst3
