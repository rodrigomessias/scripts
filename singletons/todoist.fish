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
if pgrep -f /usr/share/todoist-nativefier >/dev/null
  echo "todoist is already running"
else
  todoist-nativefier %u --no-sandbox %U &>/dev/null &
end

exit
