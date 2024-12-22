#!/bin/bash

FILE_NAME=$1
AGE=""
NAME=""

while IFS= read -r line; 
do
words=($line)
name+=(${words[0]})
age+=(${words[1]})
done <"$FILE_NAME"

echo "${name[]}"
echo "${age[]}"