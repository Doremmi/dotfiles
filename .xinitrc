setxkbmap br &
while xsetroot -name "`date`"
    do
      sleep 1
    done &
xrdb /home/$USER/.Xresources &
exec dwm
