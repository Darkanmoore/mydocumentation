
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="xiong-chiamiov-plus"
HIST_STAMPS="mm/dd/yyyy"
plugins=(git archlinux github vi-mode themes battery cp tmux)

source $ZSH/oh-my-zsh.sh
source $HOME/.zsh/alias.zsh
source $HOME/.zsh/setopt.zsh

export GDK_USE_XFT=1
export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/core_perl"
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'
export TERM=rxvt
autoload -Uz compinit zcalc
compinit
zstyle -e ':completion:*:default' list-colors 'reply=("${PREFIX:+=(#bi)($PREFIX:t)(?)*==02=01}:${(s.:.)LS_COLORS}")'
zstyle ':completion:*' menu select
zstyle '*:processes-names' command 'ps -e -o comm='
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'
zstyle ':completion:*' file-sort modification reverse


autoload -U colors && colors
zstyle ':completion:*' list-colors "=(#b) #([0-9]#)*=31=36"

insert_sudo () { zle beginning-of-line; zle -U "sudo " }
zle -N insert-sudo insert_sudo
bindkey "^[d" insert-sudo

export EDITOR=vim
bindkey "^[[1~" beginning-of-line
bindkey "^[[4~" end-of-line
bindkey "^[[3~" delete-char
bindkey "^[[5~" up-line-or-history
bindkey "^[[6~" down-line-or-history
echo "$fg[white]//                                       // $reset_color"
echo "$fg[white]//                                       // "
echo "$fg[white]//        Better to reign in Hell,       // "
echo "$fg[white]//         then serve in Heav'n          // "
echo "$fg[white]//                                       // "
echo "$fg[white]//                                       // "
echo ""
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=200
