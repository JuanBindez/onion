#!/bin/bash

sudo apt update
sudo apt install tor torbrowser-launcher -y
sudo systemctl status tor
