#!/bin/bash

# Read the current color scheme
CURRENT=$(gsettings get org.gnome.desktop.interface color-scheme)

if [ "$CURRENT" = "'prefer-dark'" ]; then
    # Switch to Light Mode
    gsettings set org.gnome.desktop.interface color-scheme 'default'
    gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita'
    notify-send -t 2000 "Theme" "Switched to Light Mode"
else
    # Switch to Dark Mode
    gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
    gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita-dark'
    notify-send -t 2000 "Theme" "Switched to Dark Mode"
fi
