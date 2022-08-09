#!/usr/bin/env bash
# -*- coding: utf-8 -*-

# First, install required packages...
sudo apt update
sudo apt install -y xfce4 xfce4-goodies xfonts-base xubuntu-icon-theme xubuntu-wallpapers gnome-icon-theme x11-apps x11-common x11-session-utils x11-utils x11-xserver-utils x11-xkb-utils dbus-user-session dbus-x11 gnome-system-monitor gnome-control-center libpam0g libxt6 libxext6

# Second, install TurboVNC
#wget https://phoenixnap.dl.sourceforge.net/project/turbovnc/2.2.5/turbovnc_2.2.5_amd64.deb
#sudo dpkg -i turbovnc_2.2.5_amd64.deb

sudo apt install ubuntu-desktop xrdp -y
sudo adduser xrdp ssl-cert
sudo ufw allow 3389
sudo ufw reload

# Third install packages
#sudo apt-add-repository ppa:flexiondotorg/quickemu
#sudo apt update
#sudo apt install quickemu

#sudo add-apt-repository ppa:yannick-mauray/quickgui
#sudo apt update
#sudo apt install quickgui

# sudo apt install -y snapd
# sudo apt install -y flatpak
# sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
# sudo flatpak install flathub com.usebottles.bottles -y



# Third, download ngrok
# wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
# unzip ngrok-stable-linux-amd64.zip
# chmod +x ngrok

# Fourth, generate and copy passwd file and xstartup script
#export PATH=$PATH:/opt/TurboVNC/bin


# mkdir /home/$myuser/.vnc
# echo $mypasswd | vncpasswd -f > /home/$myuser/.vnc/passwd
# chown -R $myuser:$myuser /home/$myuser/.vnc
# chmod 0600 /home/$myuser/.vnc/passwd

#ngrok -log=stdout 80 > /dev/null &

# Fifth and last, set up auth token from argument
# ./ngrok authtoken $NGROK_AUTH_TOKEN &

# Fifth and last do something long running
# quickget windows 11
# quickemu --vm windows-11.conf &

exit