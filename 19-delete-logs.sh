#!/bin/bash

SOURCE_DIR="/tmp/shellscript-logs"
DESTINATION_DIR=
DAYS=14
MEMORY=""
ACTION="delete or aarchive"
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

USAGE(){
    echo "COMMAND USAGE:: $(basename $0) -s <Source Directory> -d <Destination Directory> -a <action: delete or archive> -t <No.of Days> -m<Memory size of file>"
    echo "Options: "
    echo " -s: Specify the source directory"
    echo " -d: Specify the destination directory when -a is archive"
    echo " -t: Number of days back to delete log file"
    echo " -m: Memory size of the file to delete log file"
    echo " -a: Action to be performed on log files. Options : Delete or Archive"
    echo " -h: Display Help and exit" 

}
while getopts ":s:d:t:m;a:h" opt; do
    case $opt in
        s) SOURCE_DIR="$OPTARG";;
        d) DESTINATION_DIR="$OPTARG";;
        t) DAYS=$OPTARG;;
        m) MEMORY=$OPTARG;;
        a) ACTION=$OPTARG;;
        h) USAGE; exit;;
        \?) echo "invalid options: -"$OPTARG"" >&2; USAGE; exit;;
    esac
done


if [ -z $ACTION ];
then
   echo "ERROR:: -a option is mandatory. Either delete or archive"
   exit 1
fi
if [ -z "$DESTINATION_DIR" ] && [ "$ACTION" == "arcive" ]
then
    echo "ERROR:: -d option is mandatory when -a is archive"
    exit 1
fi

if [ ! -d $SOURCE_DIR ] # ! denotes opposite
then
    echo "Source directory: $SOURCE_DIR does not exists."
fi
if [ $ACTION == "delete" ]; then
 FILES-TO_DELETE=$(find $SOURCE_DIR -type f -mtime +14 -name "*.log")
fi

while IFS= read -r line
do
    echo "Deleting file: $line"
    rm -rf $line
done <<< $FILES_TO_DELETE
else
FILES_TO_ARCHIVE=$(find $SOURCE_DIR -type f -mtime +"$DAYS" -name "*.log")

while IFS= read -r line
do
    echo "Archiving file: $line"
    zip -r "$DESTINATION_DIR/$(basename "$line").zip"
    rm -rf $line
done <<< $FILES_TO_ARCHIVE
