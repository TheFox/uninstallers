#!/usr/bin/env bash

which -s brew && brew uninstall steam

sudo rm -rf /Applications/Steam.app
rm -rf ~/Library/Preferences/com.valvesoftware.steam.helper.plist
rm -rf ~/Library/LaunchAgents/com.valvesoftware.steamclean.plist
rm -rf ~/Library/'Saved Application State'/com.valvesoftware.steam.savedState
rm -rf ~//Library/'Application Support'/Steam
