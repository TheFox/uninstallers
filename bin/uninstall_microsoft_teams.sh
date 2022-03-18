#!/usr/bin/env bash
###
### uninstall_microsoft_teams.sh - Uninstaller
###
### Usage:
###   uninstall_microsoft_teams.sh [-h]
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

which -s brew && brew uninstall microsoft-teams

sudo rm -vrf '/Library/Application Support/Microsoft/TeamsUpdaterDaemon'
sudo rm -vrf /Library/Preferences/com.microsoft.teams.plist
sudo rm -vrf /Library/Logs/Microsoft/Teams
sudo rm -vrf /Library/LaunchDaemons/com.microsoft.teams.TeamsUpdaterDaemon.plist

rm -vrf ~/'Library/Application Support/Microsoft/Teams'
rm -vrf ~/'Library/Application Support/com.microsoft.teams'
rm -vrf ~/'Library/Application Support/Teams'
rm -vrf ~/'Library/Saved Application State/com.microsoft.teams.savedState'
rm -vrf ~/Library/Preferences/com.microsoft.teams.plist
rm -vrf ~/Library/HTTPStorages/com.microsoft.teams.binarycookies
rm -vrf ~/'Library/Logs/Microsoft Teams'
rm -vrf ~/'Library/Logs/Microsoft Teams Helper (Renderer)'
rm -vrf ~/'Library/Logs/Microsoft Teams Helper'
rm -vrf ~/Library/Cookies/com.microsoft.teams.binarycookies
rm -vrf ~/Library/Caches/com.microsoft.teams
