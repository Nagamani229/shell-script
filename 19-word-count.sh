#!/bin/bash
FILE_NAME=$1

if [ $# -eq 0 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

cat "$FILE_NAME" | tr -s '[:space:][:punct:]' '\n' | tr '[:upper:]' '[:lower:]' | sort | uniq -c | sort -nr | head -n 5 | awk '{print $2, $1}' 
