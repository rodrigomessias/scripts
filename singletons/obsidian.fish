#
# obsidian.fish
#
# This program is copyright (c) 2022 Rodrigo Messias <dev at rmessias.com>
# License: GPL v3 or later.  See LICENSE
# 
# script to open a single instance of Obsidian
#
# this is a fish file, should be run using fish ./startup.fish
#

if pgrep electron >/dev/null                                                                                
  echo "there is an electron app running...."
else
  /usr/bin/obsidian &>/dev/null &
end
