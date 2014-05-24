scrot /tmp/lockscreen.png
convert /tmp/lockscreen.png -blur 0x8 /tmp/lockscreen.blur.png
i3lock -i /tmp/lockscreen.blur.png
