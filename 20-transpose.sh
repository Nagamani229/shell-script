#!/bin/bash

# Make sure file.txt exists and is a regular file
if [ -f file.txt ]; then
    awk '
    {
        for (i = 1; i <= NF; i++) {
            arr[i] = arr[i] $i " "
        }
    }
    END {
        for (i = 1; i in arr; i++) {
            print arr[i]
        }
    }
    ' file.txt
else
    echo "file.txt is not a valid file."
fi