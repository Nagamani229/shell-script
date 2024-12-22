#!/bin/bash

# Check if a file is provided as an argument
if [ -z "$1" ]; then
    echo "Please provide a text file as an argument."
    exit 1
fi

# Read the input file, process it to count word frequencies, and show the top 5 most frequent words
cat "$1" | tr -cs '[:alpha:]' '[\n*]' | tr '[:upper:]' '[:lower:]' | sort | uniq -c | sort -nr | head -n 5

echo "$USAGE: chmod +x word_count.sh"
echo "./word_count.sh Word_count.sh"
