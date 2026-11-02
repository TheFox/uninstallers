#!/usr/bin/env bash

which -s brew && brew uninstall docker

sudo rm -rf /Applications/Docker.app
sudo rm -rf /Library/LaunchDaemons/com.docker.socket.plist
sudo rm -rf /Library/PrivilegedHelperTools/com.docker.socket

rm -rf ~/Library/'Application Support'/'Docker Desktop'
rm -rf ~/Library/'Application Scripts'/group.com.docker
rm -rf ~/Library/'Group Containers'/group.com.docker
rm -rf ~/Library/Preferences/com.electron.dockerdesktop.plist
rm -rf ~/Library/Containers/com.docker.docker
rm -rf ~/Library/Caches/'Docker Desktop'
rm -rf ~/Library/Caches/docker-secrets-engine
