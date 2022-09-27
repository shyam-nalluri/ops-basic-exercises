#!/bin/bash

#Scans all files in specified folder or directory
DIR=$1
 files=$(ls $DIR | sed 's/^.*\.//' | sort -u)
 
 #echo -n $scan_files
 
for file in $files
 do
	echo $file
	mkdir $DIR/$file
	cp $DIR/*.$file $1/$file/
done
