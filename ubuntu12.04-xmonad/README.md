xmonad-ubuntu-conf
==================

My xmonad config for Ubuntu 12.04, including package list, config files, and instructions.

Overview
--------

This is an adaptation of David Brewer's xmonad configuration setup -- most files edited to some capacity.

This configuration has the following features and properties remaining from DB:
* Lightweight standalone configuration, not intended to be run inside Gnome or XFCE.
* Basic status bar and task tray configuration using xmobar and trayer
* Relies on synapse for launching applications (added dbus)
* Includes tray icons for network management
* Adds xmonad as an option to your Unity login greeter, including a proper icon.

Installation
------------

### Caveats (notes from DB) ###

This process is based on the assumption that you have not yet installed xmonad. If you HAVE already installed it, whether this will work is dependent on how you installed it:
* If you installed xmonad using the standard Ubuntu repositories, you should back up any existing configuration before proceeding, but otherwise this should still work.
* If you installed xmonad from source using Haskell tools such as Cabal, my installation process will most likely NOT work for you. The Ubuntu packages may conflict with your from-source installation. You should proceed with extreme caution in this case.  

### Checkout repository ###

Place everything from xmonad-ubuntu directory into ~/.xmonad

### Installation ###

     ~/.xmonad/install-xmonad

### Make Gnome 2-based components less ugly ###

In installation script, from DB

If you don't give Gnome some hints about how it should look, anything still based on Gnome 2 is going to be styled using Gnome 2 defaults -- that is to say, ugly. I've provided a configuration file which makes some configuration changes that make things look better, at least if you like dark styling. If you have already tweaked your .gtkrc-2.0 file or otherwise prefer not to replace this file, you can skip these steps. Everything should still be functional.

    mv ~/.gtkrc-2.0 ~/gtkrc-2.0.original
    ln -s .xmonad/.gtkrc-2.0 ~/.gtkrc-2.0
