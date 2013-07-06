#!/bin/bash

# run as sudo, AND run in proper git directory

# install gnome
apt-get install ubuntu-gnome-desktop ubuntu-gnome-default-settings
dpkg-reconfigure gdm
apt-get install gnome-documents gnome-boxes
add-apt-repository ppa:gnome3-team/gnome3

# change basic file structure
rm -r Desktop Pictures Downloads Documents Videos
mkdir desktop pictures downloads
mkdir ~/.config
cp user-dirs.dirs ~/.config/

# download xfce4terminal and copy .config/Terminal/terminalrc 
apt-get install xfce4terminal
mkdir ~/.config/Terminal
cp terminalrc ~/.config/Terminal/

# install other basic applications
apt-get install emacs23 openssh-server tree 

# copy over .bashrc, .emacs
# TODO: edit .bashrc (change command prompt to "<user>@<hostname>:<file>$", add shortcuts)
cp ../.emacs ~/

# remove some programs
sudo apt-get purge -y empathy thunderbird software-center brasero gnome-contacts totem rhythmbox
apt-get update

## keyboard shortcuts DCONF EDITOR
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-down "['<Super><Shift>Down']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-up "['<Super><Shift>Up']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-down "['<Alt><Shift>Down']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-up "['<Alt><Shift>Up']"
# gsettings set org.gnome.desktop.wm.keybindings switch-windows "['<Super>Tab']" # keep?
# use some xmonad shortcuts?
gsettings set org.gnome.desktop.wm.keybindings close "['<Super><Shift>C']"

# note, defaults: 
#   ['<Alt>Tab'] switches between applications --really cool!
#   ['<Super>Up/Left/Right/Down'] full screen, full half screen left/right, undo full scree

## keyboard shortcuts GCONF EDITOR, configuration editor (under .config/?)
# disables gnome-terminal used of F# keys in gnome-terminal
gconftool-2 -s /apps/gnome-terminal/global/use_menu_accelerators -t bool false
# diables menu access keys in gnome-terminal
gconftool-2 -s /apps/gnome-terminal/global/use_mnemonics -t bool false
# TODO want appropriate shortcut to create/change tabs within terminal. 
# gconftool-2 -s /apps/gnome-terminal/keybindings next_tab -t string "<Ctrl><Shift>k"
# gconftool-2 -s /apps/gnome-terminal/keybindings next_tab -t string "<Ctrl><Shift>j"

# Rename gnome-terminal from "terminal" to "gnome-terminal"
gnometerminal=/usr/share/applications/gnome-terminal.desktop
if [ -f $gnometerminal ];
then
   sed -i 's/Name=Terminal/Name=Gnome-Terminal/' $gnometerminal
else
   echo "ERROR: $gnometerminal does not exist." 1>&2
fi

# TODO: add shortcut to start terminal: <control><shift><enter> 

 