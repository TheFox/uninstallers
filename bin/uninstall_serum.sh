#!/usr/bin/env bash
###
### uninstall_serum.sh - Uninstaller
###
### Usage:
###   uninstall_serum.sh [-h]
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

sudo rm -vrf /Library/Audio/Plug-Ins/VST/Serum.vst
sudo rm -vrf /Library/Audio/Plug-Ins/Components/Serum.component
sudo rm -vrf '/Library/Audio/Presets/Xfer Records/Serum Presets'
sudo rm -vrf '/Library/Application Support/Avid/Audio/Plug-Ins/Serum.aaxplugin'

rm -vrf ~/'Library/Application Support/com.splice.Splice/serum.esf'
rm -vrf ~/'Library/Application Support/com.splice.Splice/serum.lic'
rm -vrf ~/'Library/Application Support/com.xferrecords.serum'
rm -vrf ~/Library/Preferences/SerumPrefs.json

sudo rmdir '/Library/Audio/Presets/Xfer Records'
