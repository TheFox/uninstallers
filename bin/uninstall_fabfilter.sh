#!/usr/bin/env bash
###
### uninstall_fabfilter.sh - Uninstaller
###
### Usage:
###   uninstall_fabfilter.sh [-h]
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

which brew && brew uninstall fabfilter-pro-c fabfilter-pro-q fabfilter-pro-r

sudo rm -vrf '/Library/Audio/Plug-Ins/VST/FabFilter Pro-L 2.vst'
sudo rm -vrf '/Library/Audio/Plug-Ins/VST/FabFilter Pro-C 2 (Mono).vst'
sudo rm -vrf '/Library/Audio/Plug-Ins/VST/FabFilter Pro-DS.vst'
sudo rm -vrf '/Library/Audio/Plug-Ins/VST/FabFilter One.vst'
sudo rm -vrf '/Library/Audio/Plug-Ins/VST/FabFilter Pro-G (Mono).vst'
sudo rm -vrf '/Library/Audio/Plug-Ins/VST/FabFilter Simplon.vst'
sudo rm -vrf '/Library/Audio/Plug-Ins/VST/FabFilter Volcano 2 (SC Mono).vst'
sudo rm -vrf '/Library/Audio/Plug-Ins/VST/FabFilter Pro-MB (Mono).vst'
sudo rm -vrf '/Library/Audio/Plug-Ins/VST/FabFilter Pro-Q 3.vst'
sudo rm -vrf '/Library/Audio/Plug-Ins/VST/FabFilter Micro (Mono).vst'
sudo rm -vrf '/Library/Audio/Plug-Ins/VST/FabFilter Volcano 2.vst'
sudo rm -vrf '/Library/Audio/Plug-Ins/VST/FabFilter Twin 2.vst'
sudo rm -vrf '/Library/Audio/Plug-Ins/VST/FabFilter Timeless 3.vst'
sudo rm -vrf '/Library/Audio/Plug-Ins/VST/FabFilter Pro-DS (Mono).vst'
sudo rm -vrf '/Library/Audio/Plug-Ins/VST/FabFilter Micro.vst'
sudo rm -vrf '/Library/Audio/Plug-Ins/VST/FabFilter Volcano 2 (SC).vst'
sudo rm -vrf '/Library/Audio/Plug-Ins/VST/FabFilter Pro-MB.vst'
sudo rm -vrf '/Library/Audio/Plug-Ins/VST/FabFilter Pro-G.vst'
sudo rm -vrf '/Library/Audio/Plug-Ins/VST/FabFilter Pro-R.vst'
sudo rm -vrf '/Library/Audio/Plug-Ins/VST/FabFilter Pro-C 2.vst'
sudo rm -vrf '/Library/Audio/Plug-Ins/VST/FabFilter Pro-R (Mono).vst'
sudo rm -vrf '/Library/Audio/Plug-Ins/VST/FabFilter Saturn 2.vst'
sudo rm -vrf '/Library/Audio/Plug-Ins/VST/FabFilter Volcano 2 (Mono).vst'

sudo rm -vrf '/Library/Audio/Plug-Ins/VST3/FabFilter Pro-C 2.vst3'
sudo rm -vrf '/Library/Audio/Plug-Ins/VST3/FabFilter Twin 2.vst3'
sudo rm -vrf '/Library/Audio/Plug-Ins/VST3/FabFilter Volcano 2.vst3'
sudo rm -vrf '/Library/Audio/Plug-Ins/VST3/FabFilter Simplon.vst3'
sudo rm -vrf '/Library/Audio/Plug-Ins/VST3/FabFilter Timeless 3.vst3'
sudo rm -vrf '/Library/Audio/Plug-Ins/VST3/FabFilter One.vst3'
sudo rm -vrf '/Library/Audio/Plug-Ins/VST3/FabFilter Pro-G.vst3'
sudo rm -vrf '/Library/Audio/Plug-Ins/VST3/FabFilter Pro-Q 3.vst3'
sudo rm -vrf '/Library/Audio/Plug-Ins/VST3/FabFilter Pro-R.vst3'
sudo rm -vrf '/Library/Audio/Plug-Ins/VST3/FabFilter Pro-L 2.vst3'
sudo rm -vrf '/Library/Audio/Plug-Ins/VST3/FabFilter Saturn 2.vst3'
sudo rm -vrf '/Library/Audio/Plug-Ins/VST3/FabFilter Pro-MB.vst3'
sudo rm -vrf '/Library/Audio/Plug-Ins/VST3/FabFilter Pro-DS.vst3'
sudo rm -vrf '/Library/Audio/Plug-Ins/VST3/FabFilter Micro.vst3'

sudo rm -vrf '/Library/Application Support/Avid/Audio/Plug-Ins/FabFilter Pro-MB.aaxplugin'
sudo rm -vrf '/Library/Application Support/Avid/Audio/Plug-Ins/FabFilter Pro-DS.aaxplugin'
sudo rm -vrf '/Library/Application Support/Avid/Audio/Plug-Ins/FabFilter Simplon.aaxplugin'
sudo rm -vrf '/Library/Application Support/Avid/Audio/Plug-Ins/FabFilter Twin 2.aaxplugin'
sudo rm -vrf '/Library/Application Support/Avid/Audio/Plug-Ins/FabFilter Timeless 3.aaxplugin'
sudo rm -vrf '/Library/Application Support/Avid/Audio/Plug-Ins/FabFilter Saturn 2.aaxplugin'
sudo rm -vrf '/Library/Application Support/Avid/Audio/Plug-Ins/FabFilter Pro-Q 3.aaxplugin'
sudo rm -vrf '/Library/Application Support/Avid/Audio/Plug-Ins/FabFilter Volcano 2.aaxplugin'
sudo rm -vrf '/Library/Application Support/Avid/Audio/Plug-Ins/FabFilter Pro-C 2.aaxplugin'
sudo rm -vrf '/Library/Application Support/Avid/Audio/Plug-Ins/FabFilter Pro-R.aaxplugin'
sudo rm -vrf '/Library/Application Support/Avid/Audio/Plug-Ins/FabFilter One.aaxplugin'
sudo rm -vrf '/Library/Application Support/Avid/Audio/Plug-Ins/FabFilter Pro-G.aaxplugin'
sudo rm -vrf '/Library/Application Support/Avid/Audio/Plug-Ins/FabFilter Pro-L 2.aaxplugin'
sudo rm -vrf '/Library/Application Support/Avid/Audio/Plug-Ins/FabFilter Micro.aaxplugin'

sudo rm -vrf '/Library/Audio/Plug-Ins/Components/FabFilter Pro-C 2.component'
sudo rm -vrf '/Library/Audio/Plug-Ins/Components/FabFilter Volcano 2.component'
sudo rm -vrf '/Library/Audio/Plug-Ins/Components/FabFilter Micro.component'
sudo rm -vrf '/Library/Audio/Plug-Ins/Components/FabFilter Pro-L 2.component'
sudo rm -vrf '/Library/Audio/Plug-Ins/Components/FabFilter Pro-G.component'
sudo rm -vrf '/Library/Audio/Plug-Ins/Components/FabFilter One.component'
sudo rm -vrf '/Library/Audio/Plug-Ins/Components/FabFilter Pro-R.component'
sudo rm -vrf '/Library/Audio/Plug-Ins/Components/FabFilter Simplon.component'
sudo rm -vrf '/Library/Audio/Plug-Ins/Components/FabFilter Pro-DS.component'
sudo rm -vrf '/Library/Audio/Plug-Ins/Components/FabFilter Pro-MB.component'
sudo rm -vrf '/Library/Audio/Plug-Ins/Components/FabFilter Pro-Q 3.component'
sudo rm -vrf '/Library/Audio/Plug-Ins/Components/FabFilter Saturn 2.component'
sudo rm -vrf '/Library/Audio/Plug-Ins/Components/FabFilter Timeless 3.component'
sudo rm -vrf '/Library/Audio/Plug-Ins/Components/FabFilter Twin 2.component'

rm -vrf ~/'Library/Application Support/FabFilter'
rm -vrf ~/Library/Audio/Presets/FabFilter
rm -vf ~/Library/Preferences/com.fabfilter.Timeless.3.plist
rm -vf ~/Library/Preferences/com.fabfilter.Saturn.2.plist
rm -vf ~/Library/Preferences/com.fabfilter.One.3.plist
rm -vf ~/Library/Preferences/com.fabfilter.Micro.1.plist
rm -vf ~/Library/Preferences/com.fabfilter.Pro-C.2.plist
rm -vf ~/Library/Preferences/com.fabfilter.Pro-DS.1.plist
rm -vf ~/Library/Preferences/com.fabfilter.Pro-Q.3.plist
rm -vf ~/Library/Preferences/com.fabfilter.Twin.2.plist
rm -vf ~/Library/Preferences/com.fabfilter.Pro-L.2.plist
rm -vf ~/Library/Preferences/com.fabfilter.Volcano.2.plist
rm -vf ~/Library/Preferences/com.fabfilter.Simplon.1.plist
rm -vf ~/Library/Preferences/com.fabfilter.Pro-MB.1.plist
rm -vf ~/Library/Preferences/com.fabfilter.Pro-G.1.plist
rm -vf ~/Library/Preferences/com.fabfilter.Pro-R.1.plist
