#!/bin/bash
#shaur -S pulseeffects-legacy polybar whatscli sublime-text-4
###########
shaur -S pulseeffects-legacy
cd ~/.config/shaur/pulseeffects-legacy 
makepkg -si
cd -

shaur -S polybar
cd ~/.config/shaur/polybar 
makepkg -si
cd -

shaur -S whatscli
cd ~/.config/shaur/whatscli 
makepkg -si
cd -

shaur -S sublime-text-4
cd ~/.config/shaur/sublime-text-4 
makepkg -si
cd -
###########
mkdir -p zscroll
git clone https://github.com/noctuid/zscroll ~/git/zscroll
cd ~/git/zscroll
sudo python3 setup.py install
cd -

cd ./dmenu
sudo make install
cd -
cp ./Xresources ~/.Xresources
cp ./xinitrc ~/.xinitrc
sudo cp ./pacman.conf /etc/pacman.conf
cp -r ./picom ~/.config/
#picom --config=~/.config/picom/picom.conf
cp -r ./polybar ~/.config/
cp -r ./i3 ~/.config/
cp -r ./myPersonalConf ~/.config
cp -r ./wallpaper ~/.config/wallpaper
chmod 777 ~/.config/myPersonalConf/risolviMic.sh
chmod 777 ~/.config/myPersonalConf/walli_e.sh
chmod 777 ~/.config/polybar/scripts/scroll_spotify_status.sh
chmod 777 ~/.config/polybar/scripts/get_spotify_status.sh

sudo pacman -S --needed terminator
terminator -e "mkdir ~/git/icons-in-terminal && git clone https:walli_e.sh//github.com/sebastiencs/icons-in-terminal.git && bash ~/gi.i//install.sh && cd -"
sudo pacman -Rcns terminator && read as
sudo pacman -S --needed clang gperf rsync wget
mkdir -p ~/git/ls-icons
git clone https://github.com/sebastiencs/ls-icons.git ~/git/ls-icons
cd ~/git/ls-icons
./bootstrap
export CFLAGS=-DNO_TRUE_COLOURS=1 
export CC=clang CXX=clang++
./configure --prefix=/opt/coreutils
make
sudo make install
cd -
