#!/bin/bash

#x=`pacman -Qe thunar`
#x1=`echo $?`
#ch=

#if [ $x1 = "1" ]; then
#   echo 'The programm is not install. Do you want to install it? [y/n]'
#   read ch
#   if [ $ch = "y" ]; then
#      pacman -S thunar
#   fi
#fi

ch=
echo '** Copy the repository in your home? [y/n]'
read ch
echo  ' '
if [ $ch = "y" ];then
  if [ -d ~/dotfiles ];then
    echo '## [ The repository already exists. I remove it and reclone it ]'
    echo ' '
    echo ' '
    yes | rm -r ~/dotfiles
    git clone http://github.com/Darkanmoore/mydocumentation
    mv ~/mydocumentation ~/dotfiles
  else
    echo "## [ Your repo doesn't exists, so I will create it ]"
    echo ' ' 
    echo ' '
    git clone http://github.com/Darkanmoore/mydocumentation
    echo '## [ Your config are in ~/dotfiles ]'
    echo ' '
    echo ' '
    mv ~/mydocumentation ~/dotfiles
  fi
fi

echo '** Do you want to install all of your programm? [y/n]'
read ch
echo ' '
if [ $ch = "y" ];then
  echo '## [ Install all programs: AWESOME, MPD, NCMPCPP, URXVT, NM-APPLET, FONTS, VIM, ZSH ]' 
  sudo pacman -S awesome dmenu vim zsh rxvt-unicode rxvt-unicode-terminfo urxvt-perls mpd ncmpcpp i3lock network-manager-applet gnome-keyring
  yaourt -S oh-my-zsh-git lain-git ttf-lato
fi

echo '** Do you want to copy all of your config files in you home? [y/n]'
read ch
echo  ' '
if [ $ch = "y" ];then
  echo '## [ Coping all config in your home ]'
  echo ' '
  cd ~/dotfiles
  cp -r .vim ~/.
  cp .vimrc ~/.
  cp .Xdefaults ~/.
  cp .zshrc ~/.
  cp -r .zsh ~/.
  cp -r .config/awesome ~/.config
  cp -r .mpd ~/.
  cp -r .ncmpcpp ~/.
  cp .xinitrc ~/.
  cp .lockit.sh ~/.
  echo '## [ Coping is finished ]'
fi
echo ' '
echo '## [ Thank you for using this script ]'
