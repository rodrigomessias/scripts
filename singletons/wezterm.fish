#! /bin/fish
#
# wezterm.lua
# -------------------------------
# script to open a single instance of wezterm
#
# This program is copyright (c) 2024 Rodrigo Messias <dev at rmessias.com>
# License: GPL v3 or later.  See LICENSE
#
if pgrep wezterm >/dev/null                                                                                
  echo "wezterm is already running"
else
  wezterm &>/dev/null &
end

exit
