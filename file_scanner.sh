#!/bin/bash

#echo -n "Enter path you want to scan in the format c:/folder1/folder2: "

DIR=/app/files/ # Path is set to files folder

#Lists all files in specified folder or directory and sort them out accordingly
 files=$(ls $DIR | sed 's/^.*\.//' | sort -u)
 
 #echo -n $scan_files
 
for file in $files 
 do
	echo $file						 
	mkdir $DIR/$file				# Creates the folders based on file extensions
	cp $DIR/*.$file $DIR/$file/		# copy specic extension files to the folder created
done
