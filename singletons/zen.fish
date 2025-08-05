#! /bin/fish
#
# zen.fish
# -------------------------------
# script to open a single instance of the zen browser
#
# This program is copyright (c) 2024 Rodrigo Messias <dev at rmessias.com>
# License: GPL v3 or later.  See LICENSE
#
if pgrep -f zen-browser >/dev/null                                                                                
  echo "zen is running"
else
  zen-browser
end

exit
