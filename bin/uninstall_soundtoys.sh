#!/usr/bin/env bash
###
### uninstall_soundtoys.sh - Uninstaller
###
### Usage:
###   uninstall_soundtoys.sh [-h]
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

which brew && brew uninstall soundtoys

sudo rm -vrf /Library/Audio/Plug-Ins/VST/Soundtoys
sudo rm -vrf '/Library/Application Support/Avid/Audio/Plug-Ins/Soundtoys'

sudo rm -vrf /Library/Audio/Plug-Ins/Components/Crystallizer.component
sudo rm -vrf /Library/Audio/Plug-Ins/Components/Decapitator.component
sudo rm -vrf /Library/Audio/Plug-Ins/Components/Devil-Loc_Deluxe.component
sudo rm -vrf /Library/Audio/Plug-Ins/Components/Devil-Loc.component
sudo rm -vrf /Library/Audio/Plug-Ins/Components/EchoBoy.component
sudo rm -vrf /Library/Audio/Plug-Ins/Components/EchoBoyJr.component
sudo rm -vrf /Library/Audio/Plug-Ins/Components/EffectRack.component
sudo rm -vrf /Library/Audio/Plug-Ins/Components/FilterFreak1.component
sudo rm -vrf /Library/Audio/Plug-Ins/Components/FilterFreak2.component
sudo rm -vrf /Library/Audio/Plug-Ins/Components/LittleAlterBoy.component
sudo rm -vrf /Library/Audio/Plug-Ins/Components/LittleMicroShift.component
sudo rm -vrf /Library/Audio/Plug-Ins/Components/LittlePlate.component
sudo rm -vrf /Library/Audio/Plug-Ins/Components/LittlePrimalTap.component
sudo rm -vrf /Library/Audio/Plug-Ins/Components/LittleRadiator.component
sudo rm -vrf /Library/Audio/Plug-Ins/Components/MicroShift.component
sudo rm -vrf /Library/Audio/Plug-Ins/Components/PanMan.component
sudo rm -vrf /Library/Audio/Plug-Ins/Components/PhaseMistress.component
sudo rm -vrf /Library/Audio/Plug-Ins/Components/PrimalTap.component
sudo rm -vrf /Library/Audio/Plug-Ins/Components/Radiator.component
sudo rm -vrf /Library/Audio/Plug-Ins/Components/SieQ.component
sudo rm -vrf /Library/Audio/Plug-Ins/Components/Tremolator.component

rm -vrf ~/Library/Preferences/com.soundtoys.notifications.plist
rm -vrf ~/Library/Preferences/com.soundtoys.metrics.plist
rm -vrf ~/Library/Preferences/com.soundtoys.plist
