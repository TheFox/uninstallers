#!/usr/bin/env bash
###
### uninstall_ivory.sh - Uninstaller
###
### Usage:
###   uninstall_ivory.sh [-h]
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

sudo rm -vrf /Applications/Ivory.app

rm -vrf ~/Library/'Application Scripts'/com.tapbots.Ivory
rm -vrf ~/Library/'Application Scripts'/com.tapbots.Ivory.notificationserviceextension
rm -vrf ~/Library/'Application Scripts'/com.tapbots.Ivory.openextension
rm -vrf ~/Library/'Application Scripts'/com.tapbots.Ivory.opensafariextension
rm -vrf ~/Library/'Application Scripts'/com.tapbots.Ivory.shareextension
rm -vrf ~/Library/'Application Scripts'/com.tapbots.Ivory.widgetextension
rm -vrf ~/Library/'Application Scripts'/group.com.tapbots.Ivory

rm -vrf ~/Library/Containers/com.tapbots.Ivory
rm -vrf ~/Library/Containers/com.tapbots.Ivory.notificationserviceextension
rm -vrf ~/Library/Containers/com.tapbots.Ivory.openextension
rm -vrf ~/Library/Containers/com.tapbots.Ivory.opensafariextension
rm -vrf ~/Library/Containers/com.tapbots.Ivory.shareextension
rm -vrf ~/Library/Containers/com.tapbots.Ivory.widgetextension
