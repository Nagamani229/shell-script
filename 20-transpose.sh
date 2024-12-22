#!/bin/bash

# Input and output files
input_file="file.txt"
output_file="transposed_file.txt"

# Transpose the file and save to the output file
awk '
{
    for (i=1; i<=NF; i++) {
        a[i] = (a[i] ? a[i] " " : "") $i
    }
}
END {
    for (i=1; i<=length(a); i++) {
        print a[i]
    }
}
' "$input_file" > "$output_file"

echo "Transposition complete. Output saved to $output_file"