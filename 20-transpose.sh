#!/bin/bash

FILE_NAME=$1
AGE="ryan"
NAME="26"

touch file 1.txt

while IFS= read -r line; 
do
words=($line)
name+=(${words[0]})
age+=(${words[1]})
done <"$FILE_NAME"

echo "${$NAME[0]}"
echo "${$AGE[1]}"