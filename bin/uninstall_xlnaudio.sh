#!/usr/bin/env bash

sudo rm -vrf '/Applications/XLN Audio'
sudo rm -vrf '/Applications/XLN Online Installer.app'
sudo rm -vrf '/Library/Application Support/XLN Audio'
sudo rm -vrf /Library/'Application Support/Avid/Audio/Plug-Ins/RC-20 Retro Color.aaxplugin'
sudo rm -vrf /Library/'Application Support/XLN Audio/RC-20 Retro Color'
sudo rm -vrf /Library/Audio/Plug-Ins/Components/'RC-20 Retro Color.component'
sudo rm -vrf /Library/Audio/Plug-Ins/VST/'RC-20 Retro Color.vst'
sudo rm -vf /Library/Preferences/com.xlnaudio.xlnonlineinstaller.plist

sudo rm -vrf '/Library/Application Support/Avid/Audio/Plug-Ins/DS-10 Drum Shaper.aaxplugin'
sudo rm -vrf '/Library/Audio/Plug-Ins/Components/DS-10 Drum Shaper.component'
sudo rm -vrf '/Library/Audio/Plug-Ins/VST/DS-10 Drum Shaper.vst'

rm -vrf ~/Library/'Application Support/XLN Cloud Sync'
rm -vrf ~/Library/'Application Support/XLN Online Installer'
rm -vrf ~/Library/'Application Support/RC-20 Retro Color'
rm -vrf ~/'Library/Application Support/DS-10 Drum Shaper'
rm -vrf ~/'Library/Logs/DS-10 Drum Shaper Logs'

rm -vrf ~/Library/Preferences/ByHost/com.xlnaudio.addictivedrums2.*.plist
rm -vrf ~/Library/Preferences/ByHost/com.xlnaudio.addictivekeys.*.plist
rm -vrf ~/Library/Preferences/ByHost/com.xlnaudio.addictivetrigger.*.plist
rm -vrf ~/Library/Preferences/ByHost/com.xlnaudio.ds-10drumshaper.*.plist
rm -vrf ~/Library/Preferences/ByHost/com.xlnaudio.rc-20retrocolor.*.plist
rm -vrf ~/Library/Preferences/ByHost/com.xlnaudio.xo.*.plist

rm -vrf ~/'Library/Saved Application State/com.xlnaudio.addictivedrums2.savedState'
rm -vrf ~/'Library/Saved Application State/com.xlnaudio.addictivekeys.savedState'
rm -vrf ~/'Library/Saved Application State/com.xlnaudio.xo.savedState'
