#!/usr/bin/env bash

which -s brew && brew uninstall loopback

rm -vrf ~/'Library/Application Support/Loopback'
rm -vrf ~/'Library/Saved Application State/com.rogueamoeba.Loopback.savedState'
rm -vrf ~/Library/WebKit/com.rogueamoeba.Loopback
rm -vrf ~/Library/Preferences/com.rogueamoeba.loopbackd.plist
rm -vrf ~/Library/Preferences/com.rogueamoeba.Loopback.plist
rm -vrf ~/Library/LaunchAgents/com.rogueamoeba.loopbackd.plist
rm -vrf ~/Library/Caches/com.rogueamoeba.loopbackd
rm -vrf ~/Library/Caches/com.rogueamoeba.Loopback
