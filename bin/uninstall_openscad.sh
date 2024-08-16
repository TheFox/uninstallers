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

set -x

which -s brew && brew uninstall openscad

sudo rm -rf /Applications/OpenSCAD.app

rm -rf ~/Library/'Saved Application State'/org.openscad.OpenSCAD.savedState
rm -f ~/Library/Preferences/org.openscad.OpenSCAD.plist
rm -rf ~/Library/HTTPStorages/org.openscad.OpenSCAD
