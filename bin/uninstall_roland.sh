#!/usr/bin/env bash

sudo rm -vrf /Library/Extensions/RDUSB0171Dev.kext
sudo rm -vrf '/Library/Application Support/RolandDrv'
sudo rm -vrf /Library/Preferences/jp_co_roland_RDUSB0171Dev.pref.plist
sudo rm -vrf /Library/LaunchDaemons/jp.co.roland.RDUSB0171Setupd.plist

rm -vrf ~/'Library/Saved Application State/jp.co.roland.BOSS-TONE-STUDIO-for-RC.savedState'
rm -vrf ~/Library/Preferences/jp.co.roland.BOSS-TONE-STUDIO-for-RC.plist
rm -vrf ~/Library/Caches/jp.co.roland.BOSS-TONE-STUDIO-for-RC
