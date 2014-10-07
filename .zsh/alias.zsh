#alias iftop='sudo iftop -i wlp7s0 -B'
alias shutdown='sudo shutdown -h now'
#alias m='ncmpcpp'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias less='less --quiet'
alias h='cd ~'
alias b='acpi -b'
alias df='df --human-readable'
alias du='cdu -idh'
alias free='free -h'
alias x='startx'
#alias gitmaster='git push -u origin master && echo " (╯°□°）╯︵ WTF DID YOU PUSH BRO?"'
alias grep='grep --color=auto'
alias pacman='sudo pacman'
alias dmesg='dmesg -H'
#alias cower='cower -t ~/builds --color=always'
#alias radon='echo ON > /sys/kernel/debug/vgaswitcheroo/switch'
#alias radoff='echo OFF > /sys/kernel/debug/vgaswitcheroo/switch'
alias make='make me a sandwitch' # XKCD rulez
#alias pacup='pacman -Syu'
#alias pacrm='pacman -Rdd'
#alias netlisten='lsof -i -P | grep LISTEN'
alias paclog='tail -n 40 /var/log/pacman.log'
alias svim='sudo vim'
alias mplayer='mplayer -msgcolor -msgmodule'
alias :q='exit'
alias rmnotneed='pacman -Rscn $(pacman -Qdtq)'
alias pacorphans="pacman -Qtdq > /dev/null && sudo pacman -Rns \$(pacman -Qtdq | sed -e ':a;N;$!ba;s/\n/ /g')"
#alias identify-not-owned="sh ~/.disowned.sh"
alias update="pacman -Syy && pacman -Su"
alias p3="python 3"
alias p2="python 2"
alias wm="sudo wifi-menu"
alias pwm="ping -c 2 www.archlinux.org"
alias nvstatus="cat /proc/acpi/bbswitch"
alias nvon="sudo tee /proc/acpi/bbswitch <<<ON"
alias nvoff="sudo tee /proc/acpi/bbswitch <<<OFF"
alias ps2="sudo tee /proc/acpi/bbswitch <<<ON | primusrun pcsx2"
alias photo="fswebcam -r 640x480 -F 10 -s brightness=80%"
alias ydl="youtude-dl -x"
#alias expac="expac "%n %N" -Q $(expac "%n %G" | grep -v ' base') | awk '$2 == "" {print $1}"

