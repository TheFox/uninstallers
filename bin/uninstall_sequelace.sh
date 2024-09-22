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

which -s brew && brew uninstall sequel-ace

rm -rf ~/Library/'Saved Application State'/com.sequel-ace.sequel-ace.savedState
rm -rf ~/Library/'Application Scripts'/com.sequel-ace.sequel-ace
rm -rf ~/Library/'Application Scripts'/NKQ4HJ66PX.sequel-ace
rm -rf ~/Library/'Group Containers'/NKQ4HJ66PX.sequel-ace
rm -rf ~/Library/Containers/com.sequel-ace.sequel-ace
