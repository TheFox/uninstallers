#!/usr/bin/env bash
###
### uninstall_valhalla_dsp.sh - Uninstaller
###
### Usage:
###   uninstall_valhalla_dsp.sh [-h]
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

# Keep-alive: update existing `sudo` time stamp until script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

sudo rm -vrf '/Library/Audio/Presets/Valhalla DSP, LLC'
sudo rm -vrf '/Library/Application Support/Valhalla DSP, LLC'
rm -vrf ~/'Library/Audio/Presets/Valhalla DSP, LLC'

# Vintage Verb
sudo rm -vrf '/Library/Application Support/Avid/Audio/Plug-Ins/ValhallaVintageVerb.aaxplugin'
sudo rm -vrf /Library/Audio/Plug-Ins/Components/ValhallaVintageVerbAU64.component
sudo rm -vrf /Library/Audio/Plug-Ins/VST/ValhallaVintageVerb_x64.vst
sudo rm -vrf /Library/Audio/Plug-Ins/VST3/ValhallaVintageVerb.vst3

rm -vrf ~/Library/Preferences/ValhallaVintageVerb.settings
rm -vrf ~/Library/Preferences/ValhallaVintageVerbPreferences.settings
rm -vrf ~/Library/Preferences/ValhallaRoom.settings
rm -vrf ~/Library/Preferences/ValhallaRoomPreferences.settings

# Supermassive
sudo rm -vrf '/Library/Application Support/Avid/Audio/Plug-Ins/ValhallaSupermassive.aaxplugin'
sudo rm -vrf /Library/Audio/Plug-Ins/Components/ValhallaSupermassive.component
sudo rm -vrf /Library/Audio/Plug-Ins/VST/ValhallaSupermassive.vst
sudo rm -vrf /Library/Audio/Plug-Ins/VST3/ValhallaSupermassive.vst3

# Room
sudo rm -vrf '/Library/Application Support/Avid/Audio/Plug-Ins/ValhallaRoom.aaxplugin'
sudo rm -vrf /Library/Audio/Plug-Ins/Components/ValhallaRoomAU64.component
sudo rm -vrf /Library/Audio/Plug-Ins/VST/ValhallaRoom_x64.vst
sudo rm -vrf /Library/Audio/Plug-Ins/VST3/ValhallaRoom.vst3
