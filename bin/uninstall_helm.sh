#!/usr/bin/env bash
###
### uninstall_helm.sh - Uninstaller
###
### Usage:
###   uninstall_helm.sh [-h]
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

sudo rm -vrf /Library/Audio/Presets/Helm
sudo rm -vrf /Library/Audio/Plug-Ins/VST3/helm.vst3
sudo rm -vrf /Library/Audio/Plug-Ins/VST/helm.vst
sudo rm -vrf /Library/Audio/Plug-Ins/Components/helm.component

rm -vrf ~/'Library/Application Support/helm'
rm -vrf ~/'Library/Saved Application State/org.tytel.helm.savedState'
rm -vrf ~/Library/Audio/Presets/Helm
rm -vrf ~/Library/Caches/org.tytel.helm
