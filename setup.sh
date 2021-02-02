#!/bin/bash
sudo xbps-install base-devel libX11-devel libXft-devel libXinerama-devel fontconfig-devel st-terminfo curl xorg font-tanzem dbus-glib nodejs dmenu
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.config}"/nvim/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
cd dotfiles
cp -r .config ~
cp -r .xinitrc ~
cp -r .bashrc ~
cd ..
curl https://linux.palemoon.org/datastore/release/palemoon-29.0.0.linux-x86_64-gtk3.tar.xz > palemoon.tar.xz
tar -xvf palemoon.tar.xz -C ~/ 
sudo ln -s ~/palemoon/palemoon /usr/bin/palemoon
