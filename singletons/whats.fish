#! /bin/fish
#
# whats.fish
# -------------------------------
# script to open a single instance of whastapp something
#
# This program is copyright (c) 2022 Rodrigo Messias <dev at rmessias.com>
# License: GPL v3 or later.  See LICENSE
# 
if pgrep -f whatsapp >/dev/null                                                                                
  echo "whatsapp is already running"
else
  whatsapp-nativefier &>/dev/null &
end

exit
