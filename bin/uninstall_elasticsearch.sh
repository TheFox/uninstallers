#!/usr/bin/env bash

which -s brew && brew uninstall elasticsearch

sudo rm -vrf /usr/local/etc/elasticsearch
sudo rm -vrf /usr/local/var/log/elasticsearch
sudo rm -vrf /usr/local/var/lib/elasticsearch
sudo rm -vrf /usr/local/var/log/elasticsearch.log
sudo rm -vrf /usr/local/var/elasticsearch

rm -vrf ~/Library/Logs/Homebrew/elasticsearch
rm -vf ~/Library/LaunchAgents/homebrew.mxcl.elasticsearch.plist
