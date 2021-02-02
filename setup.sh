#!/bin/bash
sudo pacman -S neovim xorg xorg-xinit curl dmenu
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.config}"/nvim/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
git clone https://github.com/Doremmi/dotfiles.git
cd dotfiles
mv .config ~
mv .xinitrc ~
mv .bashrc ~
cd ..
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
yay -S librewolf tamsyn-font-otb
