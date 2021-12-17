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
#shaur -S pulseeffects-legacy i3-gaps-rounded-git polybar whatscli sublime-text-4
###########
shaur -S i3-gaps-rounded-git
cd ~/.config/shaur/i3-gaps-rounded-git 
makepkg -si
cd -

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




#dentro i3
#sudo pacman -S --needed terminator
#terminator -e "cd ~/git && git clone https://github.com/sebastiencs/icons-in-terminal.git && cd icons-in-terminal.git && ./install.sh && cd .."
#sudo pacman -Rcns terminator

#sudo pacman -S --needed clang gperf rsync wget
#git clone https://github.com/sebastiencs/ls-icons.git
#cd ls-icons
#./bootstrap
#export CFLAGS=-DNO_TRUE_COLOURS=1 
#export CC=clang CXX=clang++
#./configure --prefix=/opt/coreutils
#make
#sudo make install
