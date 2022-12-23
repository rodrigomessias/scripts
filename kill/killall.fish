#
# killall.fish
#
# This program is copyright (c) 2022 Rodrigo Messias <dev at rmessias.com>
# License: GPL v3 or later.  See LICENSE
# 
# script to close apps gracefully before a shutdown
#
# this is a fish file, should be run using fish ./killall.fish
#

if pgrep -f whatsapp >/dev/null                                                                                
  wmctrl -c WhatsApp
  echo "closing whatsapp"
else
  echo "whatsapp not open"
end

sleep 0.1

if pgrep -f obsidian >/dev/null                                                                                
  wmctrl -c Obsidian
  echo "closing obsidian"
else
  echo "obsidian not open"
end

sleep 0.1

if pgrep -f telegram >/dev/null                                                                                
  wmctrl -c Telegram
  echo "closing telegram"
else
  echo "telegram not open"
end

sleep 0.1

if pgrep -f firefoxdeveloperedition >/dev/null                                                                                
  wmctrl -c "Firefox Developer"
  echo "closing music thing"
else
  echo "music thing not open"
end

sleep 0.1

if pgrep -f /usr/lib/firefox/firefox >/dev/null                                                                                
  wmctrl -c "Mozilla Firefox"
  echo "closing firetube"
else
  echo "firetube not open"
end

sleep 0.1

if pgrep waterfox >/dev/null                                                                                
  wmctrl -c waterfox
  echo "closing waterfox"
else
  echo "waterfox not open"
end

sleep 0.1

echo "Windows still open on X11:"
wmctrl -l

exit
