#! /bin/fish
#
# music.fish
# -------------------------------
# script to open a single instance of the thing that plays music
#
# This program is copyright (c) 2022 Rodrigo Messias <dev at rmessias.com>
# License: GPL v3 or later.  See LICENSE
#
if pgrep -f musikcube >/dev/null                                                                                
  echo "there is a music thing running"
else
  awesome-client 'awful=require("awful");
  awful.spawn("alacritty -e musikcube &>/dev/null", {
    name = "musikcube",
    tag = root.tags()[4],
  })'
  # alacritty -e musikcube &>/dev/null &
end

exit
# using firefox developer to open webapp
# if pgrep -f firefoxdeveloperedition >/dev/null                                                                                
#   echo "there is a music thing running"
# else
#   /usr/lib/firefox-developer-edition/firefox --class=firefoxdeveloperedition &>/dev/null &
# end
