#!/bin/bash

ID=$(id -u)

TIMESTAMP=$(date +F%-%H-%M-%S)

R="\e[31m"
G="\e[32m"
N="\e[0m"

LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "started executing at $TIMESTAMP" &>> $LOGFILE

VALIDATE(){
    if [ $1 -ne 0 ]
    then
       echo -e "ERROR :: $2 is $R failed $N"
       exit 1
    else
     echo -e "$2 is $G success $N"
    fi
}
if [ $ID -ne 0 ] 
then  
    echo -e "$R ERROR :: please run this script with root access $N"
    exit 1 # you cn give other than 0
else
    echo "you are root user"
fi

yum install mysql -y &>> $LOGFILE

VALIDATE $? "installing MYSQL"

yum install git -y &>> $LOGFILE

VALIDATE $? "installing GIT"

