#!/usr/bin/env bash
###
### uninstall_cubase.sh - Uninstaller
###
### Usage:
###   uninstall_cubase.sh [-h]
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

rm -vrf ~/'Library/Preferences/Cubase LE AI Elements 10.5'
rm -vrf ~/Library/Preferences/com.steinberg.cubasesoft10v5.plist
rm -vrf ~/Library/Caches/com.steinberg.cubasesoft10v5
