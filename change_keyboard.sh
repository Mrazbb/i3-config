
#!/bin/bash

layout=$(/usr/bin/setxkbmap -print | /usr/bin/awk -F"+" '/xkb_symbols/ {print $2}' | tr -d '[:space:]')
if [ "$layout" = "us" ]; then
    /home/mrazbb/.config/i3/keyboard_sk.sh
else
    /home/mrazbb/.config/i3/keyboard_us.sh
fi

/home/mrazbb/.config/i3/xmodmap.sh
exit 0

