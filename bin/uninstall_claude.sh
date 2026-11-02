#!/usr/bin/env bash

which -s brew && brew uninstall claude

rm -rf ~/'Library/Application Support/Claude'

rm -rf ~/Library/Caches/com.anthropic.claudefordesktop
rm -rf ~/Library/Caches/com.anthropic.claudefordesktop.ShipIt
rm -rf ~/Library/HTTPStorages/com.anthropic.claudefordesktop
rm -rf ~/Library/Logs/Claude

rm -f ~/Library/Preferences/ByHost/com.anthropic.claudefordesktop.ShipIt.*.plist
rm -f ~/Library/Preferences/com.anthropic.claudefordesktop.plist
