setxkbmap br

xinput set-prop 12 278 1

feh --bg-fill ~/Pictures/arch-linux-minimalism-4k-up-1366x768.jpg

compton -b &
polybarstart &
sxhkd &
exec bspwm
