#!/bin/bash

# System Setup
sudo apt install i3 lightdm
sudo apt install open-vm-tools
sudo apt install open-vm-tools-desktop

#DPI
touch ~/.Xresources
echo "Xft.dpi: 130" > ~/.Xresources
xrdb -merge ~/.Xresources

#Packages
sudo apt install numlockx thunar feh git lxappearance polybar rofi

#Wallpapers and Themes
wget https://raw.githubusercontent.com/vinceliuice/MacTahoe-gtk-theme/refs/heads/main/wallpaper/MacTahoe-night.jpeg
git clone https://github.com/vinceliuice/Orchis-theme.git && git clone https://github.com/PapirusDevelopmentTeam/papirus-icon-theme.git
mkdir ~/.system
mkdir ~/.system/wallpapers
mkdir ~/.system/themes
mv $HOME/MacTahoe-night.jpeg ~/.system/wallpapers
mv $HOME/Orchis-theme ~/.system/themes && mv $HOME/papirus-icon-theme ~/.system/themes
cd ~/.system/themes/Orchis-theme/
./install.sh -c dark -s compact
cd ~/.system/themes/papirus-icon-theme/
./install.sh
