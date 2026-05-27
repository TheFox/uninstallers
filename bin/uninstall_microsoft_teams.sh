#!/usr/bin/env bash
###
### uninstall.sh - Uninstaller
###
### Usage:
###   uninstall.sh [-h]
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

sudo rm -rf /Library/'Application Support'/Microsoft/TeamsUpdaterDaemon
sudo rm -rf /Library/Preferences/com.microsoft.teams.plist
sudo rm -rf /Library/Logs/Microsoft/Teams
sudo rm -rf /Library/LaunchDaemons/com.microsoft.teams.TeamsUpdaterDaemon.plist
sudo rm -rf /Library/Audio/Plug-Ins/HAL/MSTeamsAudioDevice.driver

rm -rf ~/Library/'Application Support'/com.microsoft.teams
rm -rf ~/Library/'Application Support'/Microsoft/Teams
rm -rf ~/Library/'Application Support'/Teams
rm -rf ~/Library/'Saved Application State'/com.microsoft.teams.savedState
rm -rf ~/Library/Caches/com.microsoft.teams
rm -rf ~/Library/Cookies/com.microsoft.teams.binarycookies
rm -rf ~/Library/HTTPStorages/com.microsoft.teams
rm -rf ~/Library/HTTPStorages/com.microsoft.teams.binarycookies
rm -rf ~/Library/Logs/'Microsoft Teams Helper (Renderer)'
rm -rf ~/Library/Logs/'Microsoft Teams Helper'
rm -rf ~/Library/Logs/'Microsoft Teams'
rm -rf ~/Library/Preferences/com.microsoft.teams.plist
rm -rf ~/Library/Preferences/com.microsoft.teams2.helper.plist
rm -rf ~/Library/WebKit/com.microsoft.teams

rm -rf ~/Library/'Application Scripts'/com.microsoft.teams2
rm -rf ~/Library/'Application Scripts'/com.microsoft.teams2.agent
rm -rf ~/Library/'Application Scripts'/com.microsoft.teams2.launcher
rm -rf ~/Library/'Application Scripts'/com.microsoft.teams2.notificationcenter
rm -rf ~/Library/'Application Scripts'/com.microsoft.teams2.respawn
rm -rf ~/Library/'Application Scripts'/com.microsoft.teams2.widgetextension
rm -rf ~/Library/'Application Scripts'/UBF8T346G9.com.microsoft.teams

