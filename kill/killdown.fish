#! /bin/fish
#
# killdown.fish
# -------------------------------
# script to close apps gracefully and shutdown
#
# This program is copyright (c) 2024 Rodrigo Messias <dev at rmessias.com>
# License: GPL v3 or later.  See LICENSE
#
# kill all
fish '/home/messi/scripts/kill/killall.fish'

# showall
echo ""
fish '/home/messi/scripts/kill/showall.fish'

sleep 1
echo "shutting down..."
sleep 2
shutdown now
exit
