
# setxkbmap -option	# clear all layouts
# setxkbmap -option caps:swapescape
# setxkbmap -option caps:escape
setxkbmap -option caps:ctrl_modifier
exec nitrogen --restore &
# exec compton -b &
compton --backend glx --paint-on-overlay --vsync opengl-swc &

while true ; do

  load=$(cat /proc/loadavg | cut -d " " -f 3 )
  uptime=$(uptime -p)
  load_uptime="Load: ${load}; ${uptime}"

  xsetroot -name "`date '+%Y-%m-%d %H:%M:%S' ` $load_uptime"; sleep 1;\
  done &

exec dwm

