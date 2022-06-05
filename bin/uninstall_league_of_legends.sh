#!/usr/bin/env bash
###
### uninstall_league_of_legends.sh - Uninstaller
###
### Usage:
###   uninstall_league_of_legends.sh [-h]
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

which -s brew && brew uninstall league-of-legends

sudo rm -vrf '/Applications/League of Legends.app'

rm -vrf ~/'Library/Application Support/Riot Games/League of Legends'
rm -vrf ~/'Library/Saved Application State/com.riotgames.LeagueofLegends.GameClient.savedState'
rm -vrf ~/'Library/Saved Application State/com.riotgames.LeagueofLegends.LeagueClientUx.savedState'
rm -vrf ~/'Library/Saved Application State/com.riotgames.RiotGames.RiotClientUx.savedState'
rm -vrf ~/Library/Preferences/com.riotgames.RiotGames.RiotClientUxHelper.plist
rm -vrf ~/Library/Preferences/com.riotgames.LeagueofLegends.LeagueClientUxHelper.plist
