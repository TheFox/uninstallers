#!/usr/bin/env bash
###
### uninstall_sga.sh - Shattered Glass Audio Uninstaller
###
### Usage:
###   uninstall_sga.sh [-h]
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

sudo rm -vrf /Library/Audio/Plug-Ins/Components/SGA1566.component
sudo rm -vrf /Library/Audio/Plug-Ins/VST/SGA1566.vst

rm -vrf ~/'Library/Audio/Presets/Shattered Glass Audio/SGA1566'
