# quick little script to set the coordinate matrix scale to 0.5 for mouse speed, finds and uses device id for you
bash mouse_speed.sh 'DLL' 'Coordinate Transformation Matrix' '1 0 0 0 1 0 0 0 0.4' 
bash mouse_speed.sh 'G2' 'Device Enabled' '0'

# lock screen
xscreensaver -no-splash &
xss-lock -- xscreensaver-command -lock &

# background with feh
feh --bg-fill /home/cheddles/background.png &

exec xmonad

emacs
