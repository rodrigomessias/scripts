#! /bin/fish
#
# dolphin.fish
# -------------------------------
# script to open a single instance of dolphin
#
# This program is copyright (c) 2022 Rodrigo Messias <dev at rmessias.com>
# License: GPL v3 or later.  See LICENSE
#
if pgrep dolphin >/dev/null                                                                                
  echo "dolphin is already running"
else
  dolphin &>/dev/null &
end

exit
