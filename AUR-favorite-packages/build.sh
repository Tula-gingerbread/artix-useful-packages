#!/usr/bin/env bash

yay -Syu

for package in ${AUR[@]}; do
    git clone "https://aur.archlinux.org/${package}.git"
    cd "${package}"
    makepkg -sc --noconfirm
    cd ..
done
