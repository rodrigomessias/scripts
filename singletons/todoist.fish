#! /bin/fish
#
# todoist.fish
# -------------------------------
# script to open a single instance of Todoist
#
# this is a fish file, should be run using fish ./todoist.fish
# 
# uses awesome-client to open todoist and make it not be maximized
#
# This program is copyright (c) 2023 Rodrigo Messias <dev at rmessias.com>
# License: GPL v3 or later.  See LICENSE
#
if pgrep todoist >/dev/null
  echo "todoist is already running"
  # awesome-client 'root.tags()[5]:clients()[1].maximized=false' 
else
  # awesome-client 'awful=require("awful");
  # awful.spawn("todoist", {
  #   instance = "todoist_scratch",
  #   maximized = false,
  #   size_hints_honor = false,
  # })'
  todoist &>/dev/null &
  # awesome-client 'awful=require("awful");
  # awful.spawn("todoist-nativefier %u --no-sandbox %U", {
  #   maximized = false,
  #   size_hints_honor = false,
  # })'
  # sleep 1
  # awesome-client 'root.tags()[5]:clients()[1].maximized=false' 
end

exit
