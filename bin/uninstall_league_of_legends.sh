#!/usr/bin/env bash

which -s brew && brew uninstall league-of-legends

sudo rm -vrf '/Applications/League of Legends.app'
sudo rm -vrf '/Users/Shared/Riot Games'

rm -vrf ~/'Library/Application Support/Riot Games/League of Legends'
rm -vrf ~/'Library/Saved Application State/com.riotgames.LeagueofLegends.GameClient.savedState'
rm -vrf ~/'Library/Saved Application State/com.riotgames.LeagueofLegends.LeagueClientUx.savedState'
rm -vrf ~/'Library/Saved Application State/com.riotgames.RiotGames.RiotClientUx.savedState'
rm -vrf ~/Library/Preferences/com.riotgames.RiotGames.RiotClientUxHelper.plist
rm -vrf ~/Library/Preferences/com.riotgames.LeagueofLegends.LeagueClientUxHelper.plist
