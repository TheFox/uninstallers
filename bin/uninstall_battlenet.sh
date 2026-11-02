#!/usr/bin/env bash

which -s brew && brew uninstall battle-net

sudo rm -vrf '/Applications/Battle.net.app'
sudo rm -vrf /Library/Preferences/net.battle.plist

rm -vrf ~/'Library/Application Support/Battle.net'
rm -vrf ~/'Library/Application Support/Battle.net/Battle.net.config'
rm -vrf ~/'Library/Saved Application State/net.battle.app.savedState'
rm -vrf ~/Library/Preferences/net.battle.plist
rm -vrf ~/Library/Preferences/net.battle.app.plist
rm -vrf ~/Library/Preferences/net.battle.app.helper.plist
rm -vrf ~/Library/Preferences/com.riotgames.LeagueofLegends.LeagueClientUxHelper.plist

