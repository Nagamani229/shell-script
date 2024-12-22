#!/bin/bash

FILE_NAME="passwd"

fi [ ! -f $FILE_NAME ];then
  echo "File $FILE_NAME not found"
  exit 1
fi

# Read the file, normalize text to lowercase, remove punctuation, and count occurrences
word_count=$(tr -s '[:space:]' '\n' < "$file_name" | tr -d '[:punct:]' | tr '[:upper:]' '[:lower:]' | grep -v '^$' | sort | uniq -c | sort -nr)

# Display the top 5 most frequent words
echo "Top 5 Most Frequent Words:"
echo "$word_count" | head -n 5 | awk '{print $2 " - " $1 " occurrences"}'