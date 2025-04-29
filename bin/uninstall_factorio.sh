#!/usr/bin/env bash
###
### uninstall_factorio.sh - Uninstaller
###
### Usage:
###   uninstall_factorio.sh [-h]
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

sudo rm -rf /Applications/factorio.app

rm -rf ~/Library/'Application Support'/factorio
rm -rf ~/Library/'Saved Application State'/com.factorio.savedState
