#sleep 0.1
rm /tmp/screenshot.png
rm /tmp/screenshotblur.png
scrot /tmp/screenshot.png
convert /tmp/screenshot.png -blur 0x8 /tmp/screenshotblur.png
i3lock -u -t -i /tmp/screenshotblur.png
