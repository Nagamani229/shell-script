#!/bin/bash

SOURCE_DIR="$1"
DESTINATION_DIR="$2"
TIMESTAMP=$(date +F%-%H-%M-%S)

echo "Please enter the source directory to create back: "                 #print message
read SD                                                                                              #Read input from user                                      
echo "Please enter the destination directory to save .tar.gz file: "    #print message
read DD                                                                                             #Read input from user
                                                    
folder=$(echo "$SD"| awk -F / '{print $NF}')                                    # to get folder name from absolute path
gzfile="$folder-$TIME.tar.gz"                                            
cd $SD
cd ..
tar -r -f "$folder-$TIME.tar.gz" $folder                                            # create .tar.gz file
mv $gzfile $DD