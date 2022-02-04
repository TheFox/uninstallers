#!/usr/bin/env bash
###
### uninstall_synthmaster.sh - Uninstaller
###
### Usage:
###   uninstall_synthmaster.sh [-h]
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

sudo rm -vrf '/Library/Application Support/Avid/Audio/Plug-Ins/SynthMaster2.aaxplugin'
sudo rm -vrf '/Library/Application Support/KV331 Audio/SynthMaster'
sudo rm -vrf '/Library/Audio/Plug-Ins/Components/SynthMaster2.component'
sudo rm -vrf '/Library/Audio/Plug-Ins/VST/SynthMaster2.vst'
sudo rm -vrf '/Library/Audio/Plug-Ins/VST/SynthMaster2FX.vst'

sudo rm -vrf '/Users/Shared/SynthMasterTemp293'

rm -vrf ~/'Documents/Image-Line/FL Studio/Presets/Plugin database/Generators/Synth/SynthMaster 2.9 DEMO Instrument x64.fst'
rm -vrf ~/'Documents/Image-Line/FL Studio/Presets/Plugin database/Effects/Effect/SynthMaster 2.9 DEMO Effect x64.fst'
