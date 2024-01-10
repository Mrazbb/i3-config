


#!/bin/bash

layout=$(/usr/bin/setxkbmap -print | /usr/bin/awk -F"+" '/xkb_symbols/ {print $2}' | tr -d '[:space:]')
echo "Current layout: $layout" >> /home/mrazbb/.config/i3/test.txt
if [ "$layout" = "us" ]; then
    /home/mrazbb/.config/i3/keyboard_sk.sh
    /home/mrazbb/.config/i3/xmodmap.sh
else
    /home/mrazbb/.config/i3/keyboard_us.sh
    /home/mrazbb/.config/i3/xmodmap.sh
fi

echo 'testxxx' >> /home/mrazbb/.config/i3/test.txt
exit 0

