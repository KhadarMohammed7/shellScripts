#!/bin/bash

set -x

help(){
  printf "Please run the script with the valid parameters.....\n Valid options are: \n 1. ./duplicateRemoval.sh /root/Desktop/ \n 2. ./duplicateRemoval.sh /home/user/\n"
}

if [ $# -eq 0 ];
then
  help
  exit 1
fi
# Removing duplicate files from directory 
sudo apt update  # this command is to connect to repo
sudo apt install fdupes  #install fdupes command 
#fdupes -r $1 #lists duplicate files 
fdupes -Sr $1 > /home/fdupes.txt #lists duplicate files and save in /home/fdupes.txt
fdupes -rdN $1 #remove duplicastes recursively without prompting for confirmation 
