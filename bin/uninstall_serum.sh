#!/usr/bin/env bash

sudo rm -vrf /Library/Audio/Plug-Ins/VST/Serum.vst
sudo rm -vrf /Library/Audio/Plug-Ins/Components/Serum.component
sudo rm -vrf '/Library/Audio/Presets/Xfer Records/Serum Presets'
sudo rm -vrf '/Library/Application Support/Avid/Audio/Plug-Ins/Serum.aaxplugin'

rm -vrf ~/'Library/Application Support/com.splice.Splice/serum.esf'
rm -vrf ~/'Library/Application Support/com.splice.Splice/serum.lic'
rm -vrf ~/'Library/Application Support/com.xferrecords.serum'
rm -vrf ~/Library/Preferences/SerumPrefs.json

sudo rmdir '/Library/Audio/Presets/Xfer Records'
