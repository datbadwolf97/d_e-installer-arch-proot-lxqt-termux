#!/bin/sh
if [ whoami == root ]; then
pacman -Syu
 if command -v sudo 1&2>/dev/null; then
 echo "Installing Sudo."
 pacman -S sudo
 sleep 1.5
 echo "Done."
 else
 echo "Sudo was already installed, skipping."
 sleep 1.5
 fi
echo "Installing another dependencies."
pacman -S procps
echo "Done installing depedencies."
else
echo "Installing the depedencies as $(whoami)."
sudo pacman -Syu
sudo pacman -S procps
echo 'Done.'
sleep 1.5
fi
