#!/usr/bin/env bash
###
### uninstall_spitfire_audio.sh - Uninstaller
###
### Usage:
###   uninstall_spitfire_audio.sh [-h]
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

which -s brew && brew uninstall spitfire-audio

sudo rm -vrf '/Library/PrivilegedHelperTools/com.spitfireaudio.LibraryManagerHelper'
sudo rm -vrf '/Library/Logs/Spitfire Audio'
sudo rm -vrf '/Library/LaunchDaemons/com.spitfireaudio.LibraryManagerHelper.plist'

rm -vrf ~/'Library/Application Support/CLion'
rm -vrf ~/'Library/Saved Application State/com.spitfireaudio.spitfireaudio.savedState'

rm -vrf ~/Library/Logs/com.spitfireaudio
rm -vrf ~/Library/Preferences/com.spitfireaudio.spitfireaudio.plist
rm -vrf ~/Library/Caches/com.spitfireaudio.spitfireaudio
