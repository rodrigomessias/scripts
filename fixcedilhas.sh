#!/bin/bash

# Assign the filename
filename="/usr/share/X11/locale/en_US.UTF-8/Compose"
filenameGTK2="/usr/lib/gtk-2.0/2.10.0/immodules.cache"
filenameGTK3="/usr/lib/gtk-3.0/3.0.0/immodules.cache"

sed -i "s/ć/ç/" $filename

sed -i "s/Ć/Ç/" $filename

sed -i "s/:wa/:wa:en/" $filenameGTK3

sed -i "s/:wa/:wa:en/" $filenameGTK2
