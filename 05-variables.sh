#!/bin/bash

# Prompt the user for a username and password
echo "Please enter your username:"
read -s username

echo "Please enter your password:"
read -s password  # -s hides the input for security

# Print the values (for testing, you can remove this in real scenarios)
echo "Username is: $username"
echo "Password is: $password"