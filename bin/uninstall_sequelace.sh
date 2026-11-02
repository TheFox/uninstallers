#!/usr/bin/env bash

which -s brew && brew uninstall sequel-ace

sudo rm -rf '/Applications/Sequel Ace.app'

rm -rf ~/Library/'Saved Application State'/com.sequel-ace.sequel-ace.savedState
rm -rf ~/Library/'Application Scripts'/com.sequel-ace.sequel-ace
rm -rf ~/Library/'Application Scripts'/NKQ4HJ66PX.sequel-ace
rm -rf ~/Library/'Group Containers'/NKQ4HJ66PX.sequel-ace
sudo rm -rf ~/Library/Containers/com.sequel-ace.sequel-ace
