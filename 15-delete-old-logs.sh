#!/bin/bash

SOURCE_DIR="/tmp/shellscript-logs"

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ ! -d $SOURCE_DIR ] # ! denotes opposite
then
    echo -e "$R Source directory: $SOURCE_DIR does not exists. $N"
fi

mkdir -p /tmp/shellscript-logs

if [ -d "/tmp/shellscript-logs" ]; then
    find /tmp/shellscript-logs -name "*.log" -delete
else
    echo "Directory /tmp/shellscript-logs does not exist."
fi

FILES_TO_DELETE=$(find $SOURCE_DIR -type f -mtime +14 -name "*.log")

while IFS= read -r line
do
    echo "Deleting file: $line"
    rm -rf $line
done <<< $FILES_TO_DELETE