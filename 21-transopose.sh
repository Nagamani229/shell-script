#!/bin/bash

# Ensure file.txt exists and is a regular file
if [ -f file.txt ]; then
    # Temporary output file to store the transposed data
    OUTPUT_FILE="transposed_file.txt"
    
    # Transpose the content of file.txt using awk and save it to OUTPUT_FILE
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
    ' file.txt > "$OUTPUT_FILE"
    
    echo "Transposed content saved to $OUTPUT_FILE"
else
    echo "file.txt is not a valid file."
fi