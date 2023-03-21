#!/bin/bash
#
# restart_pipewire.sh
# -------------------------------
# this script restarts both pipewire services
#
# This program is copyright (c) 2023 Rodrigo Messias <dev at rmessias.com>
# License: GPL v3 or later.  See LICENSE
#
systemctl --user restart pipewire.service &
systemctl --user restart pipewire-pulse.service
