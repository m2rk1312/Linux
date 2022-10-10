#!/usr/bin/bash

sudo apt update && sudo apt upgrade
sudo apt install npm git pactl scrot light xfce4-terminal mysql-server

# Install brave
sudo apt install apt-transport-https curl
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser

# Install vscodium
wget https://github.com/VSCodium/vscodium/releases/download/1.72.0.22279/codium_1.72.0.22279_amd64.deb
sudo apt install ./codium_1.72.0.22279_amd64.deb 

# Install dbeaver
wget https://dbeaver.io/files/dbeaver-ce_latest_amd64.deb
sudo apt install ./dbeaver-ce_latest_amd64.deb

# Remove gnome shit
sudo apt purge *gnome* *lightdm*

# Install i3
sudo apt install i3
curl https://pastebin.com/raw/7cjKWsCx > .config/i3/config
curl https://pastebin.com/raw/UVFyf94Z > /etc/i3status.conf

# configure xinitrc
sudo chmod 777 ~/.xinitrc
echo "exec i3" >> .xinitrc

sudo apt autoremove

systemctl reboot


# Notes #

# Configure mysql https://www.digitalocean.com/community/tutorials/how-to-install-mysql-on-ubuntu-22-04

# Add to .xinitrc
#xrandr --output DVI-0 --mode 1920x1080 --left-of DVI-1lightdm

# Auto exec startx on login
#if [ -z "$DISPLAY" ] && [ $(tty) == /dev/tty1 ]; then
#startx
#fi

