#!/usr/bin/env bash
###
### uninstall_garageband.sh - Uninstaller
###
### Usage:
###   uninstall_garageband.sh [-h]
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

sudo rm -vrf /Applications/GarageBand.app

rm -vrf ~/'Library/Application Scripts/com.apple.garageband10'
rm -vrf ~/Library/Containers/com.apple.garageband10
