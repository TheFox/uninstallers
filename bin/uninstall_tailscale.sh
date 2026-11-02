#!/usr/bin/env bash

which -s brew && brew uninstall tailscale

sudo rm -rf /Applications/Tailscale.app

rm -rf ~/Library/'Application Scripts'/io.tailscale.ipn.macos
rm -rf ~/Library/'Application Scripts'/io.tailscale.ipn.macos.network-extension
rm -rf ~/Library/'Application Scripts'/io.tailscale.ipn.macos.share-extension
rm -rf ~/Library/'Application Scripts'/W5364U7YZB.group.io.tailscale.ipn.macos
rm -rf ~/Library/Containers/io.tailscale.ipn.macos
rm -rf ~/Library/Containers/io.tailscale.ipn.macos.network-extension
rm -rf ~/Library/Containers/io.tailscale.ipn.macos.share-extension
rm -rf ~/Library/'Group Containers'/W5364U7YZB.group.io.tailscale.ipn.macos
rm -rf ~/Library/Logs/Homebrew/tailscale
