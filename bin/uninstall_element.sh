#!/usr/bin/env bash

which -s brew && brew uninstall element

sudo rm -vrf /Applications/Element.app

rm -vrf ~/'Library/Application Support/Element'
