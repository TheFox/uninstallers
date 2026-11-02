#!/usr/bin/env bash

which -s brew && brew uninstall logitech-options

sudo rm -vrf '/Library/Application Support/Logitech.localized'
sudo rm -vrf /Library/LaunchAgents/com.logitech.manager.daemon.plist

rm -vrf ~/'Library/Saved Application State/com.logitech.Logi-Options.savedState'
rm -vrf ~/'Library/Saved Application State/com.logitech.Logi-Options.savedState'
rm -vrf ~/'Library/Application Support/Logitech/Logitech Options'

rm -vrf ~/Library/Preferences/com.Logitech.Updater.plist
rm -vrf ~/Library/Preferences/com.logitech.manager.daemon.plist
rm -vrf ~/Library/Preferences/com.logitech.Logi-Options.plist
rm -vrf ~/Library/Preferences/com.logitech.manager.setting.*.plist
rm -vrf ~/Library/Caches/com.logitech.Logi-Options
