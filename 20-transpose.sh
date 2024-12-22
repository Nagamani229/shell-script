#!/bin/bash
input_file="$1"
num_cols=$(head -1 "$input_file" | wc -w)
for i in $(seq 1 "$num_cols"); do
echo $(cut -d ' ' -f "$i" "$input_file")
done

cat data
name age
tanvi 8
reyan 7
junnu 6