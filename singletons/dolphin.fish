#! /bin/fish
#
# dolphin.fish
#
# This program is copyright (c) 2022 Rodrigo Messias <dev at rmessias.com>
# License: GPL v3 or later.  See LICENSE
# 
# script to open a single instance of dolphin
#
# this is a fish file, should be run using fish ./dolphin.fish
#

if pgrep dolphin >/dev/null                                                                                
  echo "dolphin is already running"
else
  dolphin &>/dev/null &
end

exit
