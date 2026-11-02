#!/usr/bin/env bash

which -s brew && brew uninstall bitwig-studio

sudo rm -rf /Applications/'Bitwig Studio.app'

rm -vrf ~/'Library/Application Support/Bitwig'

rm -vrf ~/Library/Preferences/com.bitwig.studio.plist
rm -vrf ~/Library/Logs/Bitwig
rm -vrf ~/Library/Caches/Bitwig
rm -vrf ~/Library/Caches/com.bitwig.studio.plugin.host32
