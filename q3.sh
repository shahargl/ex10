#!/bin/bash

file1=$(sha256sum $1 | cut -d " " -f 1)
file2=$(sha256sum $2 | cut -d " " -f 1)

if [ "$file1" == "$file2" ]; then
    echo 0
else
    echo 1
fi
