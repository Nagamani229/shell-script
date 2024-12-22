#!/bin/bash

FILE_NAME=file1.txt
AGE="ryan"
NAME="26"

while IFS= read -r line; 
do
words=($line)
name+=(${words[0]})
age+=(${words[1]})
done <"$FILE_NAME"

echo "${$NAME[]}"
echo "${$AGE[]}"