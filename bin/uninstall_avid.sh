#!/usr/bin/env bash

sudo rm -vrf /Applications/Avid
sudo rm -vrf /Applications/Avid_Uninstallers
sudo rm -vrf /Library/'Application Support'/Avid
sudo rm -vrf /Library/Audio/'MIDI Patch Names'/Avid

rm -vrf ~/Library/'Application Support'/Avid
rm -vrf ~/Library/Preferences/Avid
rm -vrf ~/Library/Logs/Avid
rm -vrf ~/Library/Caches/Avid
rm -vrf ~/Library/'Saved Application State'/com.avid.AvidLink.uninstall.savedState
rm -vrf ~/Library/'Saved Application State'/com.avid.cloud.client.services.uninstaller.savedState
rm -vrf ~/Library/'Saved Application State'/com.avid.ProTools.savedState
rm -vrf ~/Library/WebKit/com.avid.ProTools
rm -vrf ~/Library/Preferences/'com.avid.Avid Link.plist'
rm -vrf ~/Library/Preferences/com.avid.ProTools.plist
rm -vrf ~/Library/Logs/com.avid.AvidLink.uninstall.log
rm -vrf ~/Library/Logs/com.avid.cloud.client.services.uninstaller.log
rm -vrf ~/Library/Caches/com.avid.ProTools
