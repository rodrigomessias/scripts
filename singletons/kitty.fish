#! /bin/fish
#
# kitty.fish
# -------------------------------
# script to open a single instance of kitty
#
# This program is copyright (c) 2022 Rodrigo Messias <dev at rmessias.com>
# License: GPL v3 or later.  See LICENSE
#
if pgrep kitty >/dev/null                                                                                
  echo "kitty is already running"
else
  kitty &>/dev/null &
end

exit
