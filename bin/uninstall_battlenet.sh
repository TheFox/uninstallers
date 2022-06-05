#!/usr/bin/env bash
###
### uninstall_battlenet.sh - Uninstaller
###
### Usage:
###   uninstall_battlenet.sh [-h]
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

which -s brew && brew uninstall battle-net

sudo rm -vrf '/Applications/Battle.net.app'
sudo rm -vrf /Library/Preferences/net.battle.plist

rm -vrf ~/'Library/Application Support/Battle.net'
rm -vrf ~/'Library/Application Support/Battle.net/Battle.net.config'
rm -vrf ~/'Library/Saved Application State/net.battle.app.savedState'
rm -vrf ~/'Library/Saved Application State/net.battle.app.savedState'
rm -vrf ~/Library/Preferences/net.battle.plist
rm -vrf ~/Library/Preferences/net.battle.app.plist
rm -vrf ~/Library/Preferences/net.battle.app.helper.plist
rm -vrf ~/Library/Preferences/com.riotgames.LeagueofLegends.LeagueClientUxHelper.plist

