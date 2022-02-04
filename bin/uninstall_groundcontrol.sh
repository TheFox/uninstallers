#!/usr/bin/env bash
###
### uninstall_groundcontrol.sh - Uninstaller
###
### Usage:
###   uninstall_groundcontrol.sh [-h]
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

sudo rm -vrf '/Library/Application Support/GingerAudio'

sudo rm -vrf /Library/Audio/Plug-Ins/HAL/GroundControlDynamicDriver.driver
sudo rm -vrf /Library/Audio/Plug-Ins/HAL/GroundControlDriver20ch.driver
sudo rm -vrf /Library/Audio/Plug-Ins/HAL/GroundControlDriverRoom16ch.driver

# GroundControl Caster
sudo rm -vrf '/Applications/GroundControl Caster.app'
rm -vrf ~/'Library/Application Support/GroundControl Caster'
rm -vrf ~/'Library/Application Support/Ginger Audio/GroundControl Caster.groundcontrol'
rm -vrf ~/'Library/Saved Application State/com.gingeraudio.groundcontrolcaster.savedState'
rm -vrf ~/'Library/Preferences/GroundControl Caster.settings'
rm -vrf ~/'Library/Caches/com.juce.locks/juceAppLock_GroundControl Caster'
rm -vrf ~/Library/Caches/com.gingeraudio.groundcontrolcaster
rm -vrf ~/Library/Preferences/com.gingeraudio.groundcontrolcaster.plist

# GroundControl Room
sudo rm -vrf '/Applications/GroundControl Room.app'
rm -vrf ~/'Library/Application Support/GroundControl Room'
rm -vrf ~/'Library/Application Support/Ginger Audio/GroundControl Room.groundcontrol'
rm -vrf ~/'Library/Saved Application State/com.gingeraudio.groundcontrolroom.savedState'
rm -vrf ~/'Library/Preferences/GroundControl Room.settings'
rm -vrf ~/'Library/Caches/com.juce.locks/juceAppLock_GroundControl Room'
rm -vrf ~/Library/Preferences/com.gingeraudio.groundcontrolroom.plist
rm -vrf ~/Library/LaunchAgents/com.gingeraudio.Room.plist
rm -vrf ~/Library/Caches/com.gingeraudio.groundcontrolroom

rm -vrf ~/Library/Preferences/GroundControlRecentlyCrashedPluginsList
