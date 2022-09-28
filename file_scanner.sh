#!/bin/bash
echo -n "Enter path you want to scan in the format c:/folder1/folder2: "
DIR=(./app/files/)
#Scans all files in specified folder or directory
 files=$(ls $DIR | sed 's/^.*\.//' | sort -u)
 
 #echo -n $scan_files
 
for file in $files
 do
	echo $file
	mkdir $DIR/$file
	cp $DIR/*.$file $DIR/$file/
done
