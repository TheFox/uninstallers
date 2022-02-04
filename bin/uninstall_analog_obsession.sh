#!/usr/bin/env bash
###
### uninstall_analog_obsession.sh - Uninstaller
###
### Usage:
###   uninstall_analog_obsession.sh [-h]
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

sudo rm -vrf /Library/Audio/Plug-Ins/VST3/CHANNEV.vst3
sudo rm -vrf /Library/Audio/Plug-Ins/VST/CHANNEV.vst
sudo rm -vrf /Library/Audio/Plug-Ins/Components/CHANNEV.component

sudo rm -vrf /Library/Audio/Plug-Ins/VST3/KABIN.vst3

sudo rm -vrf /Library/Audio/Plug-Ins/VST3/BritChannel.vst3
sudo rm -vrf /Library/Audio/Plug-Ins/VST/BritChannel.vst
sudo rm -vrf /Library/Audio/Plug-Ins/Components/BritChannel.component

sudo rm -vrf /Library/Audio/Plug-Ins/VST3/Britpressor.vst3
sudo rm -vrf /Library/Audio/Plug-Ins/VST/Britpressor.vst
sudo rm -vrf /Library/Audio/Plug-Ins/Components/Britpressor.component

sudo rm -vrf /Library/Audio/Plug-Ins/VST3/COMBOX.vst3
sudo rm -vrf /Library/Audio/Plug-Ins/VST/COMBOX.vst
sudo rm -vrf /Library/Audio/Plug-Ins/Components/COMBOX.component

sudo rm -vrf /Library/Audio/Plug-Ins/VST3/dBComp.vst3
sudo rm -vrf /Library/Audio/Plug-Ins/VST/dBComp.vst
sudo rm -vrf /Library/Audio/Plug-Ins/Components/dBComp.component

sudo rm -vrf /Library/Audio/Plug-Ins/VST3/FetDrive.vst3
sudo rm -vrf /Library/Audio/Plug-Ins/VST/FetDrive.vst
sudo rm -vrf /Library/Audio/Plug-Ins/Components/FetDrive.component

sudo rm -vrf /Library/Audio/Plug-Ins/VST3/FETISH.vst3
sudo rm -vrf /Library/Audio/Plug-Ins/VST/FETISH.vst
sudo rm -vrf /Library/Audio/Plug-Ins/Components/FETISH.component

sudo rm -vrf /Library/Audio/Plug-Ins/VST3/FetSnap.vst3
sudo rm -vrf /Library/Audio/Plug-Ins/VST/FetSnap.vst
sudo rm -vrf /Library/Audio/Plug-Ins/Components/FetSnap.component

sudo rm -vrf /Library/Audio/Plug-Ins/VST3/FIVER.vst3
sudo rm -vrf /Library/Audio/Plug-Ins/VST/FIVER.vst
sudo rm -vrf /Library/Audio/Plug-Ins/Components/FIVER.component

sudo rm -vrf /Library/Audio/Plug-Ins/VST3/Kolin.vst3
sudo rm -vrf /Library/Audio/Plug-Ins/VST/Kolin.vst
sudo rm -vrf /Library/Audio/Plug-Ins/Components/Kolin.component

sudo rm -vrf /Library/Audio/Plug-Ins/VST3/MERICA.vst3
sudo rm -vrf /Library/Audio/Plug-Ins/VST/MERICA.vst
sudo rm -vrf /Library/Audio/Plug-Ins/Components/MERICA.component

sudo rm -vrf /Library/Audio/Plug-Ins/VST3/PEDALz.vst3
sudo rm -vrf /Library/Audio/Plug-Ins/VST/PEDALz.vst
sudo rm -vrf /Library/Audio/Plug-Ins/Components/PEDALz.component

sudo rm -vrf /Library/Audio/Plug-Ins/VST3/PREDD.vst3
sudo rm -vrf /Library/Audio/Plug-Ins/VST/PREDD.vst
sudo rm -vrf /Library/Audio/Plug-Ins/Components/PREDD.component

sudo rm -vrf /Library/Audio/Plug-Ins/VST3/ReLife.vst3
sudo rm -vrf /Library/Audio/Plug-Ins/VST/ReLife.vst
sudo rm -vrf /Library/Audio/Plug-Ins/Components/ReLife.component

# G395a_1.1
sudo rm -vrf /Library/Audio/Plug-Ins/VST3/GGGGa.vst3
sudo rm -vrf /Library/Audio/Plug-Ins/VST/GGGGa.vst
sudo rm -vrf /Library/Audio/Plug-Ins/Components/GGGGa.component

sudo rm -vrf /Library/Audio/Plug-Ins/VST3/SPECOMP.vst3
sudo rm -vrf /Library/Audio/Plug-Ins/VST/SPECOMP.vst
sudo rm -vrf /Library/Audio/Plug-Ins/Components/SPECOMP.component

sudo rm -vrf /Library/Audio/Plug-Ins/VST3/SSQ.vst3
sudo rm -vrf /Library/Audio/Plug-Ins/VST/SSQ.vst
sudo rm -vrf /Library/Audio/Plug-Ins/Components/SSQ.component

sudo rm -vrf /Library/Audio/Plug-Ins/VST3/TUBA.vst3
sudo rm -vrf /Library/Audio/Plug-Ins/VST/TUBA.vst
sudo rm -vrf /Library/Audio/Plug-Ins/Components/TUBA.component

sudo rm -vrf /Library/Audio/Plug-Ins/VST3/TuPRE.vst3
sudo rm -vrf /Library/Audio/Plug-Ins/VST/TuPRE.vst
sudo rm -vrf /Library/Audio/Plug-Ins/Components/TuPRE.component
