#!/bin/bash

SOURCE_DIR="$1"
DESTINATION_DIR="$2"
TIMESTAMP=$(date +F%-%H-%M-%S)

echo "Please enter the source directory to create back: "                 
read Source directory                                                                                                                                  
echo "Please enter the destination directory to save .tar.gz file: "    
read Destination directory                                                                                        
                                                    
folder=$(echo "$SOURCE_DIR"| awk -F / '{print $NF}')                                    
gzfile="$folder-$TIMESTAMP.tar.gz"                                            
cd $SOURCE_DIR
cd ..
tar -r -f "$folder-$TIMESTAMP.tar.gz" $folder                                         
mv $gzfile $DESTINATION_DIR