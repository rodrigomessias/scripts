#! /bin/fish
#
# firefox.fish
# -------------------------------
# script to open a single instance of the firefox browser
#
# This program is copyright (c) 2024 Rodrigo Messias <dev at rmessias.com>
# License: GPL v3 or later.  See LICENSE
#
if pgrep firefox >/dev/null                                                                                
  echo "firefox is already running"
else
  firefox &>/dev/null &
end

exit
