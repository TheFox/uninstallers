#!/usr/bin/env bash
###
### uninstall_reason.sh - Uninstaller
###
### Usage:
###   uninstall_reason.sh [-h]
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

sudo rm -vrf '/Applications/Authorizer.app'

sudo rm -vrf '/Applications/Reason 12.app'
sudo rm -vrf '/Applications/Reason+ Companion.app'
sudo rm -vrf '/Library/Application Support/Avid/Audio/Plug-Ins/Reason Rack Plugin.aaxplugin'
sudo rm -vrf '/Library/Application Support/Propellerhead Software'
sudo rm -vrf '/Library/Audio/Plug-Ins/Components/Reason Rack Plugin.component'
sudo rm -vrf '/Library/Audio/Plug-Ins/VST3/Reason Rack Plugin.vst3'

rm -vrf ~/Library/Caches/Reason
rm -vrf ~/Library/Caches/se.propellerheads.reason

rm -vrf ~/'Library/Preferences/Reason 12 Preferences'
rm -vrf ~/'Library/Preferences/Reason Plugin Dirs.prf'
rm -vrf ~/Library/Preferences/_Reasondata.prf
rm -vrf ~/Library/Preferences/com.reasonstudios.nautilus.plist
rm -vrf ~/'Library/Saved Application State/com.reasonstudios.nautilus.savedState'
rm -vrf ~/'Library/Saved Application State/se.propellerheads.reason.savedState'
rm -vrf ~/'Library/Saved Application State/se.propellerheads.authorizer.savedState'
rm -vrf ~/'Library/Application Support/Propellerhead Software'
rm -vrf ~/'Library/Application Support/Reason+ Companion'
rm -vrf ~/'Library/Application Support/Reason+ Companion'
