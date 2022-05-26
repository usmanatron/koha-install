#!/bin/bash

# Pre-requisites
sudo apt-get update
sudo apt-get -y install sudo wget gnupg

# Koha GPG Key
wget -q -O- https://debian.koha-community.org/koha/gpg.asc | sudo apt-key add -

# Koha Repository
# Hardcoded to `stable`
sudo echo 'deb http://debian.koha-community.org/koha stable main' | sudo tee /etc/apt/sources.list.d/koha.list
sudo apt-get update

# Install koha-common
sudo apt-get -y install koha-common

echo "=== Koha is now installed ==="
echo ""
echo "Now do the following manual tasks:"
echo "* Install a DB server"
echo "* Edit /etc/koha/koha-sites.conf with your config"
