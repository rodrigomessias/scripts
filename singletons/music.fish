#! /bin/fish
#
# music.fish
#
# This program is copyright (c) 2022 Rodrigo Messias <dev at rmessias.com>
# License: GPL v3 or later.  See LICENSE
# 
# script to open a single instance of the thing that plays music
#
# this is a fish file, should be run using fish ./music.fish
#

# if pgrep -f firefoxdeveloperedition >/dev/null                                                                                
#   echo "there is a music thing running"
# else
#   /usr/lib/firefox-developer-edition/firefox --class=firefoxdeveloperedition &>/dev/null &
# end
if pgrep -f musikcube >/dev/null                                                                                
  echo "there is a music thing running"
else
  kitty -e musikcube &>/dev/null &
end

exit
