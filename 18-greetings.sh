#!/bin/bash

NAME=""
WISHES=""

USAGE(){
    echo "USAGE:: $(basename $0) -n <Name> -w <wishes>"
    echo "options;:"
    echo "-n, specify the name(mandatory)"
    echo "-w, specify the wishes.ex, Good Morning"
    echo " -h, display help and exit"

}

while getopts ":n:w:h" opt; do
  case $opt in 
   n) NAME="$OPTARG";;
   w) WISHES="$OPTARG";;
   h|*) USAGE; exit;;
  esac

done