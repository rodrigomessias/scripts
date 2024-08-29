#! /bin/fish
#
# showall.fish
# -------------------------------
# this prints open x11 windows
#
# This program is copyright (c) 2023 Rodrigo Messias <dev at rmessias.com>
# License: GPL v3 or later.  See LICENSE
#
echo "  Windows still open on X11:"
wmctrl -l | grep -v "Plasma" | grep -v "Yakuake" | cut -d ' ' -f4- | sed "s/matrix/ ∟ 类/"
echo ""

exit
