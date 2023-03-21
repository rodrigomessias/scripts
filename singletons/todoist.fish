#! /bin/fish
#
# todoist.fish
# -------------------------------
# script to open a single instance of Todoist
#
# this is a fish file, should be run using fish ./todoist.fish
#
# This program is copyright (c) 2023 Rodrigo Messias <dev at rmessias.com>
# License: GPL v3 or later.  See LICENSE
#
if pgrep todoist
  echo "todoist is already running"
else
  /usr/bin/todoist &>/dev/null &
end

exit
