#!/usr/bin/env bash

which -s brew && brew uninstall mullvad-browser

sudo rm -vrf '/Applications/Mullvad Browser.app'

rm -vrf ~/'Library/Application Support/MullvadBrowser'
rm -vf ~/Library/Preferences/net.mullvad.mullvadbrowser.plist
rm -vrf ~/Library/Caches/MullvadBrowser
