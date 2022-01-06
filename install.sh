#!/bin/bash
sudo pacman -S --needed feh git python-pywal ttf-dejavu alacritty discord nemo htop pulseaudio pavucontrol picom dunst numlockx chromium


#NVIDIA -KernelLinux :
#sudo pacman -S --needed nvidia nvidia-utils nvidia-settings opencl-nvidia xorg-server xorg-fonts-encodings xorg-server-common xorg-setxkbmap xorg-xauth xorg-xinit xorg-xkbcomp xorg-xmodmap xorg-xprop xorg-xrandr xorg-xrdb xorg-xset

sudo pacman -S --needed xorg-server xorg-fonts-encodings xorg-server-common xorg-setxkbmap xorg-xauth xorg-xinit xorg-xkbcomp xorg-xmodmap xorg-xprop xorg-xrandr xorg-xrdb xorg-xset 

mkdir -p ~/git

sudo pacman -S --needed base-devel curl gzip jq skim
mkdir -p ~/git/shaur
git clone https://github.com/x7429/shaur.git ~/git/shaur
cd ~/git/shaur
sudo make install
shaur -y
cd -
shaur -S i3-gaps-rounded-git

chmod 777 ./contInst.sh
echo "i3-sensible-terminal -e \"./contInst.sh\" & " > ~/.xinitrc
echo "exec i3" >> ~/.xinitrc
startx
