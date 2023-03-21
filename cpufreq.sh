#!/bin/bash
#
# cpufreq.sh
# -------------------------------
# this script sets max CPU frequencies
# nees root access
#
# This program is copyright (c) 2023 Rodrigo Messias <dev at rmessias.com>
# License: GPL v3 or later.  See LICENSE
#

# THIS DOES NOT WORK for automation, needs root access to change /sys/ files
echo "3400000" > /sys/devices/system/cpu/cpufreq/policy0/scaling_max_freq
echo "3400000" > /sys/devices/system/cpu/cpufreq/policy1/scaling_max_freq
echo "3400000" > /sys/devices/system/cpu/cpufreq/policy2/scaling_max_freq
echo "3400000" > /sys/devices/system/cpu/cpufreq/policy3/scaling_max_freq
echo "3400000" > /sys/devices/system/cpu/cpufreq/policy4/scaling_max_freq
echo "3400000" > /sys/devices/system/cpu/cpufreq/policy5/scaling_max_freq
echo "3400000" > /sys/devices/system/cpu/cpufreq/policy6/scaling_max_freq
echo "3400000" > /sys/devices/system/cpu/cpufreq/policy7/scaling_max_freq
echo "3400000" > /sys/devices/system/cpu/cpufreq/policy8/scaling_max_freq
echo "3400000" > /sys/devices/system/cpu/cpufreq/policy9/scaling_max_freq
echo "3400000" > /sys/devices/system/cpu/cpufreq/policy10/scaling_max_freq
echo "3400000" > /sys/devices/system/cpu/cpufreq/policy11/scaling_max_freq

# echo 3400000 | sudo tee '/sys/devices/system/cpu/cpu*/cpufreq/scaling_max_freq'
echo "set max CPU clock to 3,4ghz"
