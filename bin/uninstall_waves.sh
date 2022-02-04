#!/usr/bin/env bash
###
### uninstall_waves.sh - Uninstaller
###
### Usage:
###   uninstall_waves.sh [-h]
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

which brew && brew uninstall waves-central

sudo rm -vrf /Applications/Waves
sudo rm -vrf '/Library/Application Support/Native Instruments/Service Center'/Waves-*.xml
sudo rm -vrf '/Library/Application Support/Avid/Audio/Plug-Ins/WaveShell1-AAX 13.0.aaxplugin'
sudo rm -vrf '/Library/Application Support/Waves'
sudo rm -vrf '/Library/Audio/Plug-Ins/VST3/WaveShell1-VST3 13.0.vst3'
sudo rm -vrf '/Library/Audio/Plug-Ins/VST3/WaveShell2-VST3 13.0.vst3'
sudo rm -vrf '/Library/Audio/Plug-Ins/VST/WaveShell1-VST 13.0.vst'
sudo rm -vrf '/Library/Audio/Plug-Ins/VST/WaveShell2-VST 13.0.vst'
sudo rm -vrf '/Library/Audio/Plug-Ins/Components/WaveShell1-AU 13.0.component'
sudo rm -vrf '/Library/Audio/Plug-Ins/Components/WaveShell2-AU 13.0.component'
sudo rm -vrf '/Library/Audio/Plug-Ins/WPAPI/WaveShell1-WPAPI_2 13.0.bundle'

rm -vrf ~/Library/Caches/Waves
rm -vrf ~/Library/WebKit/com.WavesAudio.Electric88
rm -vrf ~/Library/Preferences/com.WavesAudio.central.plist
rm -vrf ~/'Library/Saved Application State/com.WavesAudio.central.savedState'
rm -vrf ~/'Library/Saved Application State/com.WavesAudio.Electric88.savedState'
rm -vrf ~/'Library/Preferences/Waves Preferences'
rm -vrf ~/'Library/Logs/Waves Audio'
rm -vrf ~/'Library/Caches/Waves Audio'
rm -vrf ~/'Library/Caches/com.WavesAudio.Electric88'
