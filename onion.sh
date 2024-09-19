#!/bin/bash

sudo apt install gnupg2 -y
wget -qO- https://deb.torproject.org/torproject.org/keys.asc | gpg --dearmor | sudo tee /usr/share/keyrings/tor-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/tor-archive-keyring.gpg] https://deb.torproject.org/torproject.org $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/tor.list
sudo apt update
sudo apt install tor torbrowser-launcher -y
sudo systemctl status tor
torbrowser-launcher
