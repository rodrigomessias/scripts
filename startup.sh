if pgrep waterfox >/dev/null                                                                                
  echo "waterfox already running"
else
  /usr/lib/waterfox/waterfox &>/dev/null &
end

if pgrep firefox >/dev/null                                                                                
  echo "firefox is already running"
else
  firefox &>/dev/null &
end

if pgrep picom >/dev/null                                                                                
  echo "picom is already running"
else
  picom &>/dev/null &
end

if pgrep redshift-gtk >/dev/null                                                                                
  echo "redshift is already running"
else
  redshift-gtk &>/dev/null &
end

if pgrep syncthingtray >/dev/null                                                                                
  echo "syncthing is already running"
else
  command "/usr/bin/syncthingtray-qt6" qt-widgets-gui --single-instance &>/dev/null &
end

# to add: other scripts from ~/scripts, check autostart
