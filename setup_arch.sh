!/bin/bash

echo "Hey there, if you're not using arch this isn't for you. Also we're gonna delete your existing configs, so if that isn't for you don't press Y!"
read -n 2 -p "Do you really want to do this?(Y/n): " answ
if [[ $answ =~ [yY]{1} ]]; then
    echo "Installing packages..."
    sudo pacman --noconfirm -S i3-wm i3status dmenu unclutter xwallpaper xorg-xinit xcompmgr sxhkd dunst alacritty stow pulsemixer
    echo "done."
    echo "Removing old configs..."
    rm -fr ~/.bash* ~/.profile ~/.config/nvim ~/.configs/sxhkd ~/.configs/i3* ~/.configs/alacritty ~/.x* ~/.Xresources
    echo "done."
    echo "Alright finished setting things up. Use ./install.sh to install configs!"
else
    echo "Ok byyeeeee!"
fi


