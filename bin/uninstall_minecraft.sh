#!/usr/bin/env bash

which -s brew && brew uninstall minecraft

rm -vrf ~/'Library/Application Support/minecraft'
rm -vrf ~/'Library/Saved Application State/com.mojang.minecraftlauncherupdater.savedState'
rm -vrf ~/'Library/Saved Application State/com.mojang.minecraftlauncher.savedState'
rm -vrf ~/Library/Preferences/com.mojang.minecraftlauncher.plist
