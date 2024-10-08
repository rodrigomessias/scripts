#! /bin/fish
#
# startup.fish
# -------------------------------
# startup script that runs on login to set some stuff and open some apps.
#
# CPU stuff needs root permisions, so its set using systemctl
# services, check ./services directory for the services files
# 
# This program is copyright (c) 2023 Rodrigo Messias <dev at rmessias.com>
# License: GPL v3 or later.  See LICENSE
#
# -------------------------------
# call other scripts
# -------------------------------
# set brightness to daytime
# ~/scripts/brightness_up.sh

# wait a bit before opening apps
sleep 1

# set up mouse
# /home/messi/scripts/g502.sh

# -------------------------------
# open apps
# -------------------------------
# picom
if pgrep picom >/dev/null
  echo "picom is already running"
else
  picom &>/dev/null &
end

# todoist
# fish ~/scripts/singletons/todoist.fish

# redshift
if pgrep redshift-gtk >/dev/null
  echo "redshift is already running"
else
  redshift-gtk &>/dev/null &
end

# syncthing
if pgrep syncthingtray >/dev/null 
  echo "syncthing is already running"
else
  command "/usr/bin/syncthingtray-qt6" qt-widgets-gui --single-instance &>/dev/null &
end
sleep 0.2

# yakuake
if pgrep yakuake >/dev/null                                                                                
  echo "yakuake is already running"
else
  yakuake &>/dev/null &
end
sleep 0.2

# copyq
if pgrep copyq >/dev/null                                                                                
  echo "copyq is already running"
else
  copyq --start-server &>/dev/null &
end

# waterfox
if pgrep waterfox >/dev/null                                                                                
  echo "waterfox already running"
else
  /home/messi/apps/waterfox/waterfox &>/dev/null &
end
sleep 0.2

# firefox
if pgrep firefox >/dev/null                                                                                
  echo "firefox is already running"
else
  firefox &>/dev/null &
end
sleep 0.2

# obsidian
~/scripts/singletons/obsidian.fish
sleep 0.2

# kalendar
# if pgrep -x kalendar >/dev/null                                                                                
#   echo "kalendar is already running"
# else
#   kalendar &>/dev/null &
# end
# sleep 0.2


# -------------------------------
# awesomeWM stuff
# -------------------------------
# select tags 1 and 2
# echo key super+d | dotool
# echo key super+f | dotool
# echo key super+x | dotool
# echo key super+v | dotool
# sleep 10
#
# remove urgent status
xdotool key ctrl+super+u

# set primary/secondary sections
# echo "key super+F7" | dotool

exit
