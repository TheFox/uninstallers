#!/usr/bin/env bash
###
### uninstall_splice.sh - Uninstaller
###
### Usage:
###   uninstall_splice.sh [-h]
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

which brew && brew uninstall splice

rm -vrf ~/Library/Audio/Plug-Ins/Support/Splice
rm -vrf ~/'Library/Application Support/com.splice.Splice'
rm -vrf ~/'Library/Application Support/Splice'
rm -vrf ~/'Library/Saved Application State/com.splice.Splice.savedState'

rm -vrf ~/Library/Preferences/ByHost/com.splice.Splice.ShipIt.*.plist
rm -vrf ~/Library/Preferences/com.splice.Splice.plist
rm -vrf ~/Library/HTTPStorages/com.splice.Splice
rm -vrf ~/Library/HTTPStorages/com.splice.Splice.binarycookies
rm -vrf ~/Library/Logs/Splice
rm -vrf ~/Library/Caches/com.splice.Splice
rm -vrf ~/Library/Caches/com.splice.Splice.ShipIt
