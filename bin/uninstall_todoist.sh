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

which -s brew && brew uninstall todoist

rm -rf ~/Library/'Application Support'/CrashReporter/Todoist_*.plist
rm -rf ~/Library/'Application Support'/Todoist
rm -rf ~/Library/'Application Support'/Caches/todoist-updater
rm -rf ~/Library/'Saved Application State'/com.todoist.mac.Todoist.savedState
rm -rf ~/Library/Preferences/ByHost/com.todoist.mac.Todoist.ShipIt.*.plist
rm -rf ~/Library/Preferences/com.todoist.mac.Todoist.plist
rm -rf ~/Library/'Application Scripts'/com.todoist.mac.Todoist.TodoistSafari
rm -rf ~/Library/'Application Scripts'/com.todoist.mac.Todoist.TodoistShare
rm -rf ~/Library/'Application Scripts'/com.todoist.mac.Todoist.TodoistToday
rm -rf ~/Library/'Application Scripts'/com.todoist.mac.Todoist.TodoistWidgets
rm -rf ~/Library/'Application Scripts'/*.com.todoist.mac.Todoist.extensions
rm -rf ~/Library/Logs/Todoist
rm -rf ~/Library/Caches/todoist-updater
rm -rf ~/Library/Caches/com.todoist.mac.Todoist
rm -rf ~/Library/Caches/com.todoist.mac.Todoist.ShipIt

rm -rf ~/Library/'Group Containers'/*.com.todoist.mac.Todoist.extensions
rm -rf ~/Library/Containers/com.todoist.mac.Todoist.TodoistWidgets
rm -rf ~/Library/Containers/com.todoist.mac.Todoist.TodoistShare
