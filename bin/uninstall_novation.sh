#!/usr/bin/env bash

# kextcache --clear-staging
# sudo -vrf /Library/StagedExtensions/Library/Extensions/NovationUSBAudio.kext
# sudo -vrf /Library/StagedExtensions/System/Library/Extensions/NovationUSBAudio.kext

sudo rm -vrf /Applications/Components.app
sudo rm -vrf /Library/Extensions/NovationUSBAudio.kext
sudo rm -vrf '/Library/Audio/MIDI Drivers/NovationUSBMIDIDriver.plugin'

rm -vrf ~/'Library/Saved Application State/com.novationmusic.circuitcomponents.savedState'

rm -vrf ~/Library/Preferences/com.novationmusic.circuitcomponents.plist
rm -vrf ~/Library/Preferences/ByHost/com.novationmusic.circuitcomponents.ShipIt.*.plist
rm -vrf ~/Library/HTTPStorages/com.novationmusic.circuitcomponents

rm -vrf ~/Library/Caches/com.novationmusic.circuitcomponents
rm -vrf ~/Library/Caches/com.novationmusic.circuitcomponents.ShipIt
