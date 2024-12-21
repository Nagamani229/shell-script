#!/bin/bash

NAME=""
WISHES="Good Morning"

USAGE(){
    echo "USAGE:: $(basename $0) -n <Name> -w <wishes>"
    echo "options;:"
    echo "-n, specify the name(mandatory)"
    echo "-w, specify the wishes.(optional)" default is Good Morning
    echo " -h, display help and exit"

}

while getopts ":n:w:h" opt; do
  case $opt in 
   n) NAME="$OPTARG";;
   w) WISHES="$OPTARG";;
   \?) echo "Invalid options: -"$OPTARG""  >&2; USAGE; exit;;
   :) USAGE; exit;;
   h) USAGE; exit;;
  esac

done

  #if [ -z "$NAME" ] || [ -z "$WISHES" ]; then
if [ -z "$NAME" ]
  #echo "ERROR: Both -n and -w are mandatory options"
  echo "ERROR: -n is mandatory"
  USAGE
  exit 1

fi

 echo "Hello $NAME. $WISHES. I have been learning shell script"