#!/usr/bin/env bash
###
### uninstall_logitech_options.sh - Uninstaller
###
### Usage:
###   uninstall_logitech_options.sh [-h]
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

# Keep-alive: update existing `sudo` time stamp until script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

which -s brew && brew uninstall logitech-options

sudo rm -vrf '/Library/Application Support/Logitech.localized'
sudo rm -vrf /Library/LaunchAgents/com.logitech.manager.daemon.plist

rm -vrf ~/'Library/Saved Application State/com.logitech.Logi-Options.savedState'
rm -vrf ~/'Library/Saved Application State/com.logitech.Logi-Options.savedState'
rm -vrf ~/'Library/Application Support/Logitech/Logitech Options'

rm -vrf ~/Library/Preferences/com.Logitech.Updater.plist
rm -vrf ~/Library/Preferences/com.logitech.manager.daemon.plist
rm -vrf ~/Library/Preferences/com.logitech.Logi-Options.plist
rm -vrf ~/Library/Preferences/com.logitech.manager.setting.*.plist
rm -vrf ~/Library/Caches/com.logitech.Logi-Options
