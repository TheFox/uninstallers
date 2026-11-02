#!/usr/bin/env bash

which -s brew && brew uninstall tunnelblick

sudo rm -fr /Library/'Application Support'/Tunnelblick
sudo rm -fr /Library/StagedExtensions/Library/Extensions/tunnelblick-tap.kext
sudo rm -fr /Library/StagedExtensions/Library/Extensions/tunnelblick-tun.kext
sudo rm -fr /Library/StagedExtensions/Applications/Tunnelblick.app
sudo rm -fr /Library/Extensions/tunnelblick-tap.kext
sudo rm -fr /Library/Extensions/tunnelblick-tun.kext
sudo rm -f /Library/LaunchDaemons/net.tunnelblick.tunnelblick.tunnelblickd.plist

rm -fr ~/Library/'Application Support'/Tunnelblick
rm -f ~/Library/'Application Support'/CrashReporter/Tunnelblick_6E181335-30FA-50C3-9732-550B98346073.plist
rm -f ~/Library/Preferences/net.tunnelblick.tunnelblick.plist
rm -f ~/Library/LaunchAgents/net.tunnelblick.tunnelblick.LaunchAtLogin.plist
