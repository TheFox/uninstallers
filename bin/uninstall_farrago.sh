#!/usr/bin/env bash

which -s brew && brew uninstall farrago

rm -vrf ~/'Library/Application Support/Farrago'
rm -vrf ~/'Library/Saved Application State/com.rogueamoeba.farrago.savedState'
rm -vf ~/Library/Preferences/com.rogueamoeba.farrago.plist
rm -vrf ~/Library/Caches/com.rogueamoeba.farrago Library/WebKit/com.rogueamoeba.farrago
