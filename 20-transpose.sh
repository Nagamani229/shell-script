#!/bin/bash

# Transpose the file content
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