#!/bin/sh
oh-my-posh upgrade --force
atuin-update
sudo dnf update
flatpak update
cd mpv-build
sudo ./clean
sudo ./rebuild -j4
sudo ./install
