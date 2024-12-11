#! /bin/fish
#
# thorium.fish
# -------------------------------
# script to open a single instance of the thorium browser
#
# This program is copyright (c) 2024 Rodrigo Messias <dev at rmessias.com>
# License: GPL v3 or later.  See LICENSE
#
if pgrep thorium >/dev/null                                                                                
  echo "thorium is running"
else
  thorium-browser
end

exit
