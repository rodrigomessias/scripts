#
# startup.fish
#
# This program is copyright (c) 2022 Rodrigo Messias <dev at rmessias.com>
# License: GPL v3 or later.  See LICENSE
# 
# startup script that runs on login to set some stuff and open some apps.
#
# this is a fish file, should be run using fish ./startup.fish
#
# CPU stuff needs root permisions, so its set using systemctl
# services, check ./services directory for the services files
#

# -------------------------------
# call other scripts
# -------------------------------
~/scripts/brightness_up.sh
~/scripts/g502.sh

# -------------------------------
# open apps
# -------------------------------
# waterfox
if pgrep waterfox >/dev/null                                                                                
  echo "waterfox already running"
else
  /usr/lib/waterfox/waterfox &>/dev/null &
end

# firefox
if pgrep firefox >/dev/null                                                                                
  echo "firefox is already running"
else
  firefox &>/dev/null &
end

# picom
if pgrep picom >/dev/null                                                                                
  echo "picom is already running"
else
  picom &>/dev/null &
end

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

# yakuake
if pgrep yakuake >/dev/null                                                                                
  echo "yakuake is already running"
else
  yakuake &>/dev/null &
end

# copyq
if pgrep copyq >/dev/null                                                                                
  echo "copyq is already running"
else
  copyq --start-server &>/dev/null &
end

exit
