#!/usr/bin/env bash

which -s brew && brew uninstall eve-launcher

sudo rm -vrf '/Applications/EVE Launcher.app'

rm -vrf ~/'Library/Saved Application State/com.ccpgames.evelauncher.savedState'
rm -vrf ~/'Library/Application Support/CCP/EVE'
rm -vrf ~/'Library/Application Support/EVE Online'
rm -vrf ~/Library/Preferences/com.ccpgames.EVE.plist
rm -vrf ~/Library/Caches/com.ccpgames.evelauncher
