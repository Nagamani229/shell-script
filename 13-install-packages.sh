#!/bin/bash

ID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

TIMESTAMP=$(date +F%-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "script started executing at $TIMESTAMP" &>> $LOGFILE

VALIDATE(){
    if [$1 -ne 0]
    then 
       echo -e "$2...$R failed $N"
    else
        echo -e "$2...$G success $N"
    fi
}

if [ $ID -ne 0 ] 
then  
    echo -e "$R ERROR :: please run this script with root access $N"
    exit 1 # you cn give other than 0
else
    echo "you are root user"
fi

#echo "All args passed: $@"

for $package in $@
do 
  yum list installed $package &>> $LOGFILE
  if ($? -ne o)
  then
    yum install $package -y  &>> $LOGFILE
    VALIDATE $? "installation of $package"
    else
        echo -e "$package is already installed ....$Y skipping $N"
    fi

done