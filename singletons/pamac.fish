#
# pamac.fish
#
# This program is copyright (c) 2022 Rodrigo Messias <dev at rmessias.com>
# License: GPL v3 or later.  See LICENSE
# 
# script to open a single instance of pamac (add/remove programs)
#
# this is a fish file, should be run using fish ./startup.fish
#

if pgrep pamac >/dev/null                                                                                
  echo "pamac is already running"
else
  pamac-manager &>/dev/null &
end

exit
