#!/bin/bash
file=/etc/passwd

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ ! -f $file ]
then 
    echo -e "$R source directory: $file does not exists. $N"
fi

while IFS= ":" read -r username passwd user-id user_fullname group_id home_dir
do
   echo "username: $username"
   echo "user ID: $userid"
   echo "userfullname: $user_fullname
done < $file