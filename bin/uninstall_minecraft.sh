#!/usr/bin/env bash
###
### uninstall_minecraft.sh - Uninstaller
###
### Usage:
###   uninstall_minecraft.sh [-h]
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

which -s brew && brew uninstall minecraft

rm -vrf ~/'Library/Application Support/minecraft'
rm -vrf ~/'Library/Saved Application State/com.mojang.minecraftlauncherupdater.savedState'
rm -vrf ~/'Library/Saved Application State/com.mojang.minecraftlauncher.savedState'
rm -vrf ~/Library/Preferences/com.mojang.minecraftlauncher.plist
