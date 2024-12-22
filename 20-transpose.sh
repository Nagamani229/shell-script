#!/bin/bash
FILE=/etc/passwd
NAME=("Ryan" "mani" "prudhvi")
AGE=("21 "26 "27")

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ ! -f $FILE]
then 
    echo -e "$R $FILE: $FILE does not exists. $N"
fi

while IFS= ":" read -r name age file 
do
   echo "name: $NAME"
   echo "age: $AGE"
   echo "file: $FILE"
done < $FILE