#!/bin/bash

read -p "Enter File Name:" fileName

if ([ -e $fileName ])
then
if ([ -w $fileName ])
then
echo "Enter some text!! to exit press ctrl+d"
cat >> $fileName

else
echo "$fileName does not have write permission"
fi
else
echo "$fileName does not exist"
fi