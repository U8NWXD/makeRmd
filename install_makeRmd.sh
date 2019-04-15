#!/bin/bash

# This file is part of makeRmd (https://github.com/U8NWXD/makeRmd).
# You may not use this file except in compliance with the license in
# LICENSE.txt, which can be found at the project link above. This
# project comes with ABSOLUTELY NO WARRANTY. See LICENSE.txt for
# details.

# Thanks to https://stackoverflow.com/a/246128 for guiding me
path="$0"
# While $path is a symlink, resolve
while [[ -h $path ]]; do
    parent="$( cd -P "$( dirname "$path" )" >/dev/null 2>&1 && pwd )"
    path="$( readlink "$path" )"
    # For relative symlinks, prepend parent path
    if [[ $path != /* ]]; then
        path="$parent/$path"
    fi
done
parent="$( cd -P "$( dirname "$path" )" >/dev/null 2>&1 && pwd )"
cp "$parent/Makefile" Makefile
