#!/usr/bin/env bash

sudo rm -vrf /Applications/MeldaProduction
sudo rm -vrf /Library/Audio/Plug-Ins/VST3/MeldaProduction
sudo rm -vrf '/Library/Application Support/MeldaProduction'

rm -vrf ~/'Library/Application Support/MeldaProduction'
rm -vrf ~/'Saved Application State/com.meldaproduction.setup.savedState'
rm -vrf ~/'Saved Application State/com.meldaproduction.MDownloader.savedState'
