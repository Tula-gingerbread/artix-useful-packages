#!/usr/bin/env bash

bash build.sh
for package in ${AUR[@]}; do
    cd "$package"
    makepkg -i --noconfirm
    cd ..
done