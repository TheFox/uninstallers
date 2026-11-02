#!/usr/bin/env bash

sudo rm -vrf /Library/Audio/Presets/Helm
sudo rm -vrf /Library/Audio/Plug-Ins/VST3/helm.vst3
sudo rm -vrf /Library/Audio/Plug-Ins/VST/helm.vst
sudo rm -vrf /Library/Audio/Plug-Ins/Components/helm.component

rm -vrf ~/'Library/Application Support/helm'
rm -vrf ~/'Library/Saved Application State/org.tytel.helm.savedState'
rm -vrf ~/Library/Audio/Presets/Helm
rm -vrf ~/Library/Caches/org.tytel.helm
