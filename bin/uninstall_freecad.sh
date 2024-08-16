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

which -s brew && brew uninstall freecad

sudo rm -rf /Applications/FreeCAD.app

rm -rf ~/Library/'Application Support'/FreeCAD
rm -rf ~/Library/Preferences/FreeCAD
rm -rf ~/Library/Preferences/freecad.plist
rm -rf ~/Library/Preferences/com.freecad.FreeCAD.plist
rm -rf ~/Library/Caches/FreeCAD
