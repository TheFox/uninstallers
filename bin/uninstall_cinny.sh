#!/usr/bin/env bash
###
### uninstall_cinny.sh - Uninstaller
###
### Usage:
###   uninstall_cinny.sh [-h]
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

rm -vrf /Applications/Cinny.app
rm -vrf ~/Library/'Application Support'/in.cinny.app
rm -vrf ~/Library/'Saved Application State'/in.cinny.app.savedState
rm -vrf ~/Library/WebKit/in.cinny.app
rm -vrf ~/Library/Preferences/in.cinny.app.plist
rm -vrf ~/Library/Caches/in.cinny.app
