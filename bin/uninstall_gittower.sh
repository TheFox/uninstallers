#!/usr/bin/env bash
###
### uninstall_gittower.sh - Uninstaller
###
### Usage:
###   uninstall_gittower.sh [-h]
###
### Options:
###   -h                  Show this message.

NO_COLOR='\033[0m'
RED='\033[0;31m'
YELLOW='\033[0;33m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'

which curl &> /dev/null || { echo 'ERROR: curl not found in PATH'; exit 1; }
which mktemp &> /dev/null || { echo 'ERROR: mktemp not found in PATH'; exit 1; }

help() {
    head -50 "$0" | grep '^###' | sed 's/^###//; s/^ //'
}

if [[ "$1" == -h ]]; then
    help
    exit 1
fi

which brew && brew uninstall tower

rm -vrf ~/'Library/Application Support/com.fournova.Tower3'
rm -vrf ~/'Library/Application Support/com.fournova.Tower2'
rm -vrf ~/'Library/Application Support/com.fournova.Tower'

rm -vrf ~/'Library/Saved Application State/com.fournova.Tower3.savedState'
rm -vrf ~/'Library/Saved Application State/com.fournova.Tower2.savedState'
rm -vrf ~/'Library/Saved Application State/com.fournova.Tower.savedState'

rm -vrf ~/Library/Preferences/com.fournova.Tower3.plist
rm -vrf ~/Library/Preferences/com.fournova.Tower2.plist
rm -vrf ~/Library/Preferences/com.fournova.Tower.plist

rm -vrf ~/Library/Preferences/com.fournova.Tower.plist.lockfile

rm -vrf ~/Library/Caches/com.fournova.Tower3
rm -vrf ~/Library/Caches/com.fournova.Tower2
rm -vrf ~/Library/Caches/com.plausiblelabs.crashreporter.data/com.fournova.Tower3
rm -vrf ~/Library/Caches/com.plausiblelabs.crashreporter.data/com.fournova.Tower2
