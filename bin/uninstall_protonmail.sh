#!/usr/bin/env bash

which -s brew && brew uninstall protonmail-bridge

sudo rm -vrf '/Applications/ProtonMail Bridge.app'
sudo rm -vrf '/Applications/ProtonMail Import-Export app.app'

rm -vrf ~/'Library/Application Support/protonmail'
rm -vrf ~/'Library/Preferences/com.protonmail.import-export.ProtonMail Import-Export app.plist'
rm -vrf ~/'Library/Caches/ProtonMail Import-Export app'
rm -vrf ~/'Library/Caches/ProtonMail Bridge'
rm -vrf ~/Library/Preferences/com.protonmail.import-export.plist
rm -vrf ~/Library/Caches/protonmail
