#!/bin/bash

ch=
echo '** Copy the repository in your home? [y/n]'
read ch
echo ' '

if [! -f /usr/bin/git ];then
  echo ' ## [ Git is not installed. ]'
  echo ' '
  sudo pacman -S git
fi

if [ $ch = "y" ];then
  if [ -d ~/dotfiles ];then
    echo '## [ The repository already exists. I remove it and reclone it ]'
    echo ' '
    echo ' '
    yes | rm -r ~/dotfiles
    git clone http://github.com/Darkanmoore/mydocumentation
    mv ~/mydocumentation ~/dotfile
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
  sudo pacman -S awesome dmenu vim zsh rxvt-unicode rxvt-unicode-terminfo urxvt-perls mpd ncmpcpp i3lock network-manager-applet gnome-keyring adobe-source-code-pro-fonts
  yaourt -S lain-git 
fi

echo '** Do you want to copy all of your config files in you home? [y/n]'
read ch
echo  ' '
if [ $ch = "y" ];then
  echo '## [ Coping all config in your home ]'
  echo ' '
  cp -r ~/dotfiles/.config/awesome ~/.config
  cp -r ~/dotfiles/.* ~/.
  cp ~/dotfiles/.* ~/.
  echo '## [ Coping is finished ]'
fi
echo ' '
echo '## [ Thank you for using this script ]'
