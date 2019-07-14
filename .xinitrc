exec feh --bg-fill ~/.config/bg.jpg &
exec compton &
# Switch to US international with Caps as Mod/Escape
setxkbmap -option caps:escape -variant altgr-intl && killall xcape 2>/dev/null ; xcape -e 'Super_L=Escape' &
exec i3
