#!/usr/bin/env bash
###
### uninstall_pgadmin.sh - Uninstaller
###
### Usage:
###   uninstall_pgadmin.sh [-h]
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

which -s brew && brew uninstall pgadmin4

rm -vrf ~/'Library/Application Support/pgadmin'
rm -vrf ~/'Library/Application Support/pgadmin 4'
rm -vrf ~/'Library/Saved Application State/org.pgadmin.pgadmin4.savedState'
rm -vrf ~/'Library/Preferences/org.pgadmin.pgadmin4.plist'
rm -vrf ~/'Library/Preferences/pgadmin'
rm -vrf ~/'Library/Caches/pgAdmin 4'
