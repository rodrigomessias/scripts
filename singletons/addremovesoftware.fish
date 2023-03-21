#! /bin/fish
#
# addremovesoftware.fish
# -------------------------------
# script to open a single instance of pamac (add/remove programs)
#
# This program is copyright (c) 2022 Rodrigo Messias <dev at rmessias.com>
# License: GPL v3 or later.  See LICENSE
#
if pgrep pamac >/dev/null                                                                                
  echo "pamac is already running"
else
  pamac-manager &>/dev/null &
end

exit
