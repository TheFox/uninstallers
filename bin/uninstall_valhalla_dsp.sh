#!/usr/bin/env bash

sudo rm -vrf '/Library/Audio/Presets/Valhalla DSP, LLC'
sudo rm -vrf '/Library/Application Support/Valhalla DSP, LLC'
rm -vrf ~/'Library/Audio/Presets/Valhalla DSP, LLC'

# Vintage Verb
sudo rm -vrf '/Library/Application Support/Avid/Audio/Plug-Ins/ValhallaVintageVerb.aaxplugin'
sudo rm -vrf /Library/Audio/Plug-Ins/Components/ValhallaVintageVerbAU64.component
sudo rm -vrf /Library/Audio/Plug-Ins/VST/ValhallaVintageVerb_x64.vst
sudo rm -vrf /Library/Audio/Plug-Ins/VST3/ValhallaVintageVerb.vst3

rm -vrf ~/Library/Preferences/ValhallaVintageVerb.settings
rm -vrf ~/Library/Preferences/ValhallaVintageVerbPreferences.settings
rm -vrf ~/Library/Preferences/ValhallaRoom.settings
rm -vrf ~/Library/Preferences/ValhallaRoomPreferences.settings

# Supermassive
sudo rm -vrf '/Library/Application Support/Avid/Audio/Plug-Ins/ValhallaSupermassive.aaxplugin'
sudo rm -vrf /Library/Audio/Plug-Ins/Components/ValhallaSupermassive.component
sudo rm -vrf /Library/Audio/Plug-Ins/VST/ValhallaSupermassive.vst
sudo rm -vrf /Library/Audio/Plug-Ins/VST3/ValhallaSupermassive.vst3

# Room
sudo rm -vrf '/Library/Application Support/Avid/Audio/Plug-Ins/ValhallaRoom.aaxplugin'
sudo rm -vrf /Library/Audio/Plug-Ins/Components/ValhallaRoomAU64.component
sudo rm -vrf /Library/Audio/Plug-Ins/VST/ValhallaRoom_x64.vst
sudo rm -vrf /Library/Audio/Plug-Ins/VST3/ValhallaRoom.vst3
