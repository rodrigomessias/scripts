#! /bin/fish
#
# waterfox.fish
# -------------------------------
# script to open a single instance of the waterfox browser
#
# This program is copyright (c) 2024 Rodrigo Messias <dev at rmessias.com>
# License: GPL v3 or later.  See LICENSE
#
if pgrep waterfox >/dev/null                                                                                
  echo "waterfox is running"
else
  /home/messi/apps/waterfox/waterfox &>/dev/null &
end

exit
