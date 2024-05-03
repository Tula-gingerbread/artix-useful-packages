#!/usr/bin/env bash

if ! pacman -Q yay &> /dev/null; then
    if ! git clone 'https://aur.archlinux.org/yay.git'; then
        echo 'Failed clone repo' >&2
        exit 2
    fi

    cd yay
    if ! makepkg -si --noconfirm; then
        echo 'Failed build package' >&2
        exit 2
    fi

    cd ..
    rm -rf yay/ 
fi