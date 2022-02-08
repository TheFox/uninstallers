#!/usr/bin/env bash
###
### uninstall_clion.sh - Uninstaller
###
### Usage:
###   uninstall_clion.sh [-h]
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

which -s brew && brew uninstall clion

rm -vrf ~/'Library/Application Support/CLion'
rm -vrf ~/'Library/Saved Application State/com.jetbrains.CLion.savedState'
rm -vrf ~/Library/Preferences/com.jetbrains.CLion.plist
rm -vrf ~/Library/Preferences/CLion20*
rm -vrf ~/Library/Preferences/jetbrains.clion.*.plist
rm -vrf ~/Library/Logs/CLion20*
rm -vrf ~/Library/Caches/CLion20*
