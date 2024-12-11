#! /bin/fish
#
# killboot.fish
# -------------------------------
# script to close apps gracefully and reboot
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
echo "rebooting..."
sleep 2
shutdown -r now
exit
