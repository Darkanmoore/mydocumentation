zstyle :compinstall filename '/home/simone/.zshrc'
autoload -Uz compinit zcalc
compinit
echo '-----------> The God of Freedom say <--------------'
cowsay -f tux $(fortune)
zstyle ':completion:*' menu select
zstyle ':completion:*' file-sort modification reverse
zstyle ':completion:*' list-colors "=(#b) #([0-9]#)*=36=31"

# You need zsh-syntax-highlighting installed
#source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
autoload -U colors && colors
echo ''
setopt VI
setopt NO_BEEP
alias cpv="rsync -poghb --backup-dir=/tmp/rsync -e /dev/null --progress --" # Copy with progress bar && rsync <3
export EDITOR=vim

PROMPT="%{$fg[magenta]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg_no_bold[cyan]%}%1~ %{$reset_color%}%# "
setopt correctall
alias ls='pwd; ls --classify --tabsize=0 --literal --color=auto --human-readable'
zstyle '*:processes-names' command 'ps -e -o comm='
alias shutdown='sudo shutdown -h now'
alias cp='cp -v --interactive'
alias mv='mv -v --interactive'
alias rm='rm -v --interactive'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias c='clear'
alias less='less --quiet'
alias s='cd ..'
alias h='cd ~'
alias df='df --human-readable'
alias du='du -s --human-readable'
alias free='free -h'
alias update='sudo pacman -Syy && sudo pacman -Su'
alias p3='python3'
alias p2='python2'

zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
alias grep='grep --color=auto'
alias pacman='sudo pacman'
alias x='startx' # I hate login manager ŁØŁ
RPROMPT="[%{$fg[green]%}%*%{$reset_color%}][%{$fg_no_bold[yellow]%}%?%{$reset_color%}]" 
