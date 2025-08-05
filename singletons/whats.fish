#! /bin/fish
#
# whats.fish
# -------------------------------
# script to open a single instance of whastapp something
#
# This program is copyright (c) 2022 Rodrigo Messias <dev at rmessias.com>
# License: GPL v3 or later.  See LICENSE
# 
if pgrep -f zapzap >/dev/null                                                                                
  echo "whatsapp is already running"
else
  flatpak run --branch=stable --arch=x86_64 --command=zapzap --file-forwarding com.rtosta.zapzap @@u %u @@ &>/dev/null &
end

exit
