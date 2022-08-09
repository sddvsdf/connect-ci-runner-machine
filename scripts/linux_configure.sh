#!/usr/bin/env bash
# -*- coding: utf-8 -*-

# First, install required packages...
sudo apt update
sudo apt install -y xfce4 xfce4-goodies xfonts-base xubuntu-icon-theme xubuntu-wallpapers gnome-icon-theme x11-apps x11-common x11-session-utils x11-utils x11-xserver-utils x11-xkb-utils dbus-user-session dbus-x11 gnome-system-monitor gnome-control-center libpam0g libxt6 libxext6

# Second, install TurboVNC
#wget https://phoenixnap.dl.sourceforge.net/project/turbovnc/2.2.5/turbovnc_2.2.5_amd64.deb
#sudo dpkg -i turbovnc_2.2.5_amd64.deb

sudo apt install -y tightvncserver

# Third install packages
#sudo apt-add-repository ppa:flexiondotorg/quickemu
#sudo apt update
#sudo apt install quickemu

#sudo add-apt-repository ppa:yannick-mauray/quickgui
#sudo apt update
#sudo apt install quickgui

sudo apt install -y snapd
sudo apt install -y flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub com.usebottles.bottles



# Third, download ngrok
# wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
# unzip ngrok-stable-linux-amd64.zip
# chmod +x ngrok

# Fourth, generate and copy passwd file and xstartup script
#export PATH=$PATH:/opt/TurboVNC/bin
mkdir $HOME/.vnc
cp ./resources/xstartup $HOME/.vnc/xstartup.turbovnc
echo $VNC_USER_PASSWORD | vncpasswd -f > $HOME/.vnc/passwd
chown -R $USER:$USER $HOME/.vnc
chmod 0600 $HOME/.vnc/passwd

tee -a ~/.vnc/xstartup <<- EOF
#!/bin/bash
unset DBUS_SESSION_BUS_ADDRESS
#xrdb $HOME/.Xresources
#/usr/bin/autocutsel -s CLIPBOARD -fork
#xsetroot -solid grey -cursor_name left_ptr &
dbus-launch /usr/bin/startxfce4 &
EOF
sudo chmod +x ~/.vnc/xstartup

# mkdir /home/$myuser/.vnc
# echo $mypasswd | vncpasswd -f > /home/$myuser/.vnc/passwd
# chown -R $myuser:$myuser /home/$myuser/.vnc
# chmod 0600 /home/$myuser/.vnc/passwd

#ngrok -log=stdout 80 > /dev/null &

# Fifth and last, set up auth token from argument
# ./ngrok authtoken $NGROK_AUTH_TOKEN &

# Fifth and last do something long running
quickget windows 11
quickemu --vm windows-11.conf &

exit