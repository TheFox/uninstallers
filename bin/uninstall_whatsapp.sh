#!/usr/bin/env bash

which -s brew && brew uninstall whatsapp

rm -vrf ~/'Library/Application Support/WhatsApp'
rm -vrf ~/'Library/Saved Application State/WhatsApp.savedState'

rm -vrf ~/Library/Preferences/WhatsApp.plist
rm -vrf ~/Library/Preferences/ByHost/WhatsApp.ShipIt.*.plist
rm -vrf ~/Library/Preferences/WhatsApp-Helper.plist
rm -vrf ~/Library/Logs/WhatsApp
rm -vrf ~/Library/Caches/WhatsApp.ShipIt
rm -vrf ~/Library/Caches/WhatsApp
