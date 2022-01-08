#!/bin/bash

shaur -S pulseeffects-legacy polybar whatscli sublime-text-4 ttf-font-awesome-4 otf-font-awesome-5-free ttf-font-awesome-4/

###########
mkdir -p zscroll
git clone https://github.com/noctuid/zscroll ~/git/zscroll
cd ~/git/zscroll
sudo python3 setup.py install
cd -

cd ./dmenu
sudo make install
cd -
cp ./alacritty.yml ~/.alacritty.yml
cp ./tmux.conf ~/.tmux.conf

cp ./zshrc ~/.zshrc
sudo pacman -S zsh
zsh
sudo chsh -s /bin/zsh root
chsh -s /bin/zsh virt

cp ./Xresources ~/.Xresources
cp ./xinitrc ~/.xinitrc
sudo cp ./pacman.conf /etc/pacman.conf
cp -r ./picom ~/.config/
#picom --config=~/.config/picom/picom.conf
cp -r ./polybar ~/.config/
cp -r ./i3 ~/.config/
cp -r ./myPersonalConf ~/.config
cp -r ./wallpaper ~/.config/wallpaper
cp -r ./dunst ~/.config/wallpaper
cp -r ./ranger ~/.config/wallpaper
cp -r ./zsh ~/.config/wallpaper
chmod 777 ~/.config/myPersonalConf/risolviMic.sh
chmod 777 ~/.config/myPersonalConf/walli_e.sh
chmod 777 ~/.config/polybar/scripts/scroll_spotify_status.sh
chmod 777 ~/.config/polybar/scripts/get_spotify_status.sh

sudo pacman -S --needed terminator
terminator -e "mkdir ~/git/icons-in-terminal && git clone https://github.com/sebastiencs/icons-in-terminal.git ~/git/icons-in-terminal && cd ~/git/icons-in-terminal && ./install.sh && ./print_icons.sh && cd - read asd"
sudo pacman -Rcns terminator
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
