#!/bin/bash
if [ "$#" -ne 1 ]; then
echo "Usage: $0 path_to_text_file"
exit 1
fi

declare -A word_freq

while read -r line; do
# Convert to lowercase and split the line into words
for word in $line; do
word=$(echo "$word" | tr '[:upper:]' '[:lower:]' | sed "s/[^a-zA-Z0-9']//g")
# Increment the word's count
((word_freq["$word"]++))
done
done < "$1"