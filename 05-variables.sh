#!/bin/bash

echo "please enter your username::"

read -s USERNAME    #the value entered above will be automatically attached to the USERNAME variable

echo "username is : $USERNAME" 

echo "please enter your password::"

read "username is: $USERNAME, password is: $PASSWORD" #i am printing just for validation, you should not print username and passwords in scripts