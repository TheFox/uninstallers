#!/usr/bin/env bash

sudo rm -vrf '/Library/Application Support/Digidesign'
sudo rm -vrf /Library/Extensions/DigidesignElevenRack.kext
sudo rm -vrf /Library/LaunchDaemons/com.digidesign.elevenrack.helper.plist

sudo rm -vrf '/Library/Audio/MIDI Devices/Digidesign Device List.middev'
sudo rm -vrf '/Library/Audio/MIDI Devices/Generic/Images/Digidesign_MIDI_IO.tiff'
sudo rm -vrf '/Library/Audio/MIDI Devices/Generic/Images/Digidesign_PRE.tiff'

sudo rm -vrf '/Library/PreferencePanes/Digidesign Eleven Rack.prefPane'
sudo rm -vrf '/Library/User Template/Non_localized/Library/Audio/Plug-Ins/Digidesign'

rm -vrf ~/'Library/Application Support/Digidesign'
