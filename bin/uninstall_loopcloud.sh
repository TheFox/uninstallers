#!/usr/bin/env bash

sudo rm -vrf /Applications/Loopcloud.app

sudo rm -vrf /Library/Audio/Plug-Ins/VST/Loopmasters

sudo rm -vrf '/Library/Application Support/Loopcloud'
sudo rm -vrf '/Library/Application Support/Loopmasters'

sudo rm -vrf '/Library/Audio/Plug-Ins/VST/Loopcloud.vst'
sudo rm -vrf '/Library/Audio/Plug-Ins/VST3/Loopcloud Play.vst3'
sudo rm -vrf '/Library/Audio/Plug-Ins/VST3/Loopcloud Drum.vst3'

sudo rm -vrf '/Library/Audio/Plug-Ins/Components/Loopcloud.component'
sudo rm -vrf '/Library/Audio/Plug-Ins/Components/Loopcloud Play.component'
sudo rm -vrf '/Library/Audio/Plug-Ins/Components/Loopcloud Drum.component'

sudo rm -vrf '/Library/Application Support/Avid/Audio/Plug-Ins/Loopcloud.aaxplugin'

rm -vrf ~/'Library/Saved Application State/com.loopmasters.Loopcloud.savedState'
rm -vrf ~/Library/Preferences/com.loopmasters.Loopcloud.plist
rm -vrf ~/Library/Caches/Loopcloud
rm -vrf ~/Library/Loopcloud
