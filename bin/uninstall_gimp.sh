#!/usr/bin/env bash
###
### uninstall.sh - Uninstaller
###
### Usage:
###   uninstall.sh [-h]
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

which -s brew && brew uninstall gimp

rm -rf ~/Library/'Application Support'/GIMP
rm -rf ~/Library/'Saved Application State'/org.gimp.gimp-2.10:.savedState
rm -rf ~/Library/'Saved Application State'/org.gnome.gimp.savedState
rm -f ~/Library/Preferences/gimp.plist
rm -f ~/Library/Preferences/org.gnome.gimp.plist
rm -f ~/Library/Preferences/org.gimp.gimp-2.10:.plist