#! /bin/fish
#
# showall.fish
#
# This program is copyright (c) 2023 Rodrigo Messias <dev at rmessias.com>
# License: GPL v3 or later.  See LICENSE
# 
# this prints open x11 windows
#
# this is a fish file, should be run using fish ./killall.fish
#

echo "Windows still open on X11:"
wmctrl -l

exit
