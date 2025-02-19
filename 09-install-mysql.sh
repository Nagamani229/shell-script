#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ] 
then  
   echo "ERROR :: please run this script with root access"
   exit 1 # you cn give other than 0
else
   echo "you are root user"
fi

yum install mysql -y

if [ $? -ne 0 ]
then
   echo "ERROR :: installing MYSQL is failed"
   exit 1
else
   echo "installing MYSQL is success"
fi

yum install git -y

if [ $? -ne 0 ]
then
   echo "ERROR :: installing git is failed"
   exit 1
else
   echo "installing git is success"
fi
