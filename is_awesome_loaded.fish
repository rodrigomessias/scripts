#! /bin/fish
#
# is_awesome_loaded.fish
#
# This program is copyright (c) 2022 Rodrigo Messias <dev at rmessias.com>
# License: GPL v3 or later.  See LICENSE
# 
# script to check if awesome is being reloaded or booted for the first time
#

# this is not working at all sadly
if set -q ISAWESOMELOADED 
  exit
end

set -gx ISAWESOMELOADED true
exit 100
