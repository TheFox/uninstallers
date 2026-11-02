#!/usr/bin/env bash

sudo rm -vrf '/Applications/Studio One 5.app'

rm -vrf ~/'Library/Application Support/PreSonus/Studio One 5'
rm -vrf ~/'Library/Saved Application State/com.presonus.studioone2.savedState'
rm -vf ~/Library/Preferences/com.presonus.studioone2.plist
rm -vf ~/Library/Audio/Plug-Ins/Support/Splice/license/studioone5.lic
