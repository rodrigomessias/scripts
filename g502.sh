#!/bin/bash
#
# g502.sh
# -------------------------------
# this script sets my Logitech G502 up (1200dpi)
#
# This program is copyright (c) 2023 Rodrigo Messias <dev at rmessias.com>
# License: GPL v3 or later.  See LICENSE
#
xinput --set-prop 'pointer:Logitech G502 HERO Gaming Mouse' 'libinput Accel Profile Enabled' 0, 1 
xinput --set-prop 'Logitech G502 HERO Gaming Mouse' 'libinput Accel Speed' -0.861
xinput --set-prop 'Logitech G502 HERO Gaming Mouse' 'libinput Middle Emulation Enabled' 1

echo "set G502 mouse settings"
