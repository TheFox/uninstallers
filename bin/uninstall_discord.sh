#!/usr/bin/env bash

which -s brew && brew uninstall discord

rm -vrf ~/'Library/Application Support/discord'
rm -vrf ~/'Library/Saved Application State/com.hnc.Discord.savedState'
rm -vrf ~/Library/Logs/Discord
rm -vrf ~/Library/Caches/com.hnc.Discord
rm -vrf ~/Library/Caches/com.hnc.Discord.ShipIt
rm -vf ~/Library/Preferences/ByHost/com.hnc.Discord.ShipIt.*.plist
rm -vf ~/Library/Preferences/com.hnc.Discord.plist
