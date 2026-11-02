#!/usr/bin/env bash

which -s brew && brew uninstall cyberduck

sudo rm -vrf /Applications/Cyberduck.app

rm -vrf ~/Library/Caches/ch.sudo.cyberduck
rm -vrf ~/Library/HTTPStorages/ch.sudo.cyberduck
rm -vrf ~/Library/Logs/Cyberduck
rm -vrf ~/Library/Preferences/ch.sudo.cyberduck.plist
rm -vrf ~/Library/'Saved Application State'/ch.sudo.cyberduck.savedState
