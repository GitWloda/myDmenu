#!/bin/bash

shaur -S betterdiscordctl betterdiscord-installer pulseeffects-legacy polybar whatscli sublime-text-4 ttf-font-awesome-4

betterdiscordctl-install

sudo pip install wpgtk
wpg
curl https://raw.githubusercontent.com/deviantfero/wpgtk/master/wpgtk/misc/wpg-install.sh -o ~/wpg.sh
chmod 777 wpg.sh
./wpg.sh -g
mkdir -p ~/.config/zsettingsd
echo "Net/ThemeName \"FlatColor\"" > ~/.config/zsettingsd/zsettingsd.conf

###########
mkdir -p zscroll
git clone https://github.com/noctuid/zscroll ~/git/zscroll
cd ~/git/zscroll
sudo python3 setup.py install
cd -

mkdir -p BetterDiscord
git clone https://github.com/BetterDiscord/installer ~/git/BetterDiscord
cd BetterDiscord
yarn install
yarn dev &
cd -

mkdir -p pywal-discord
git clone https://github.com/FilipLitwora/pywal-discord.git
cd pywal-discord
./install
cd -

mkdir -p glava
git clone https://github.com/IsaacHorvath/glava ~/git/glava
cd ~/git/glava
meson build --prefix /usr
ninja -C build
sudo ninja -C build install
cd -

cd ./dmenu
sudo make install
cd -
cp ./alacritty.yml ~/.alacritty.yml
cp ./tmux.conf ~/.tmux.conf

cp ./zshrc ~/.zshrc
sudo pacman --noconfirm -S zsh
git clone https://github.com/zsh-users/zsh-autosuggestions
mv zsh-autosuggestions ~/.config/zsh/
chsh -s /usr/bin/zsh

unzip extChromium.zip
cp -r ./extChromium/* ~/.config/chromium/Default

cp ./Xresources ~/.Xresources
cp ./xinitrc ~/.xinitrc
cp ./changeColorGlave.sh ~/.config/myPersonalConf/changeColorGlave.sh
cd  ~/.config/
glava --copy-config
cd -
cp ./rc.glsl ~/.config/glava/
cp -r ./picom ~/.config/
#picom --config=~/.config/picom/picom.conf
cp -r ./polybar ~/.config/
cp -r ./i3 ~/.config/
cp -r ./myPersonalConf ~/.config
cp -r ./wallpaper ~/.config/wallpaper
cp -r ./dunst ~/.config/config
cp -r ./ranger ~/.config/config
cp -r ./zsh ~/.config
chmod 777 ~/.config/scope.sh
chmod 777 ~/.config/myPersonalConf/risolviMic.sh
chmod 777 ~/.config/myPersonalConf/walli_e.sh
chmod 777 ~/.config/polybar/scripts/scroll_spotify_status.sh
chmod 777 ~/.config/polybar/scripts/get_spotify_status.sh
chmod 777 ~/.config/myPersonalConf/changeColorGlave.sh
chmod 777 ~/.config/polybar/lauch.sh

sudo pacman --noconfirm -S --needed terminator
terminator -e "mkdir ~/git/icons-in-terminal && git clone https://github.com/sebastiencs/icons-in-terminal.git ~/git/icons-in-terminal && cd ~/git/icons-in-terminal && ./install.sh && ./print_icons.sh && cd - read asd"
sudo pacman --noconfirm -Rcns terminator
sudo pacman --noconfirm -S --needed clang gperf rsync wget
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
