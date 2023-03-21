#! /bin/fish
#
# obsidian.fish
# -------------------------------
# script to open a single instance of Obsidian
#
# This program is copyright (c) 2022 Rodrigo Messias <dev at rmessias.com>
# License: GPL v3 or later.  See LICENSE
# 
# if pgrep -f obsidian >/dev/null                                                                                
if pgrep -f obsidian/app
  echo "obsidian is already running"
else
  /usr/bin/obsidian &>/dev/null &
end

exit
