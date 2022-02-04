#!/usr/bin/env bash
###
### uninstall_voxengo.sh - Uninstaller
###
### Usage:
###   uninstall_voxengo.sh [-h]
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

# VST3
sudo rm -vrf /Library/Audio/Plug-Ins/VST3/SPAN.vst3
sudo rm -vrf /Library/Audio/Plug-Ins/VST3/Boogex.vst3
sudo rm -vrf /Library/Audio/Plug-Ins/VST3/MSED.vst3
sudo rm -vrf /Library/Audio/Plug-Ins/VST3/OldSkoolVerb.vst3
sudo rm -vrf '/Library/Audio/Plug-Ins/VST3/Marvel GEQ.vst3'
sudo rm -vrf '/Library/Audio/Plug-Ins/VST3/Overtone GEQ.vst3'

# VST
sudo rm -vrf /Library/Audio/Plug-Ins/VST/Beeper.vst
sudo rm -vrf '/Library/Audio/Plug-Ins/VST/Latency Delay.vst'
sudo rm -vrf '/Library/Audio/Plug-Ins/VST/Sound Delay.vst'
sudo rm -vrf '/Library/Audio/Plug-Ins/VST/Stereo Touch.vst'
sudo rm -vrf '/Library/Audio/Plug-Ins/VST/Tube Amp.vst'
