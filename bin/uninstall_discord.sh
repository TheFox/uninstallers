#!/usr/bin/env bash
###
### uninstall_discord.sh - Uninstaller
###
### Usage:
###   uninstall_discord.sh [-h]
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

which -s brew && brew uninstall discord

rm -vrf ~/'Library/Application Support/discord'
rm -vrf ~/'Library/Saved Application State/com.hnc.Discord.savedState'
rm -vrf ~/Library/Logs/Discord
rm -vrf ~/Library/Caches/com.hnc.Discord
rm -vrf ~/Library/Caches/com.hnc.Discord.ShipIt
rm -vf ~/Library/Preferences/ByHost/com.hnc.Discord.ShipIt.*.plist
rm -vf ~/Library/Preferences/com.hnc.Discord.plist
