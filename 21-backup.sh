#!/bin/bash

TIMESTAMP=$(date +F%-%H-%M-%S)

echo "Please enter the source directory to create back: "                 
read Source directory                                                                                                                                  
echo "Please enter the destination directory to save .tar.gz file: "    
read Destination directory                                                                                        
                                                    
folder=$(echo "$SD"| awk -F / '{print $NF}')                                    
gzfile="$folder-$TIMESTAMP.tar.gz"                                            
cd $SD
cd ..
tar -r -f "$folder-$TIMESTAMP.tar.gz" $folder                                         
mv $gzfile $DD