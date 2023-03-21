#!/bin/bash
#
# fixdecilhas.sh
# -------------------------------
# this script fixes cedilhas ç (c + ')
#
# This program is copyright (c) 2023 Rodrigo Messias <dev at rmessias.com>
# License: GPL v3 or later.  See LICENSE
#
# Assign the filenames
filename="/usr/share/X11/locale/en_US.UTF-8/Compose"
filenameGTK2="/usr/lib/gtk-2.0/2.10.0/immodules.cache"
filenameGTK3="/usr/lib/gtk-3.0/3.0.0/immodules.cache"

# change files
# qt
sudo sed -i "s/ć/ç/" $filename
sudo sed -i "s/Ć/Ç/" $filename

# gtk
sudo sed -i "s/:wa/:wa:en/" $filenameGTK3
sudo sed -i "s/:wa/:wa:en/" $filenameGTK2
