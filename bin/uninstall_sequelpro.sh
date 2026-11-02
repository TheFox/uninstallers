#!/usr/bin/env bash

which -s brew && brew uninstall sequel-pro

rm -vrf ~/'Library/Application Support/Sequel Pro'
rm -vrf ~/'Library/Saved Application State/com.sequelpro.SequelPro.savedState'
rm -vrf ~/Library/Preferences/com.sequelpro.SequelPro.plist
rm -vrf ~/Library/Caches/com.sequelpro.SequelPro
