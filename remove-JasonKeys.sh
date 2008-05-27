#change caps lock key from escape back to caps lock
xmodmap -e "remove control = Caps_Lock"
xmodmap -e "add lock = Caps_Lock"
