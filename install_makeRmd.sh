#!/bin/bash

# This file is part of makeRmd (https://github.com/U8NWXD/makeRmd).
# You may not use this file except in compliance with the license in
# LICENSE.txt, which can be found at the project link above. This
# project comes with ABSOLUTELY NO WARRANTY. See LICENSE.txt for
# details.

# Thanks to https://stackoverflow.com/a/4774063 for this one-liner
SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"
cp "$SCRIPTPATH/Makefile" Makefile
