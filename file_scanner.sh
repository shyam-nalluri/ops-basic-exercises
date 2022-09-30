#!/bin/bash

#echo -n "Enter path you want to scan in the format c:/folder1/folder2: "

DIR=/data # Path is set to files folder

#Lists all files in specified folder or directory and sort them out accordingly
files=$(ls $DIR | sed 's/^.*\.//' | sort -u)
 
#echo -n $scan_files

cd /data
echo `pwd`
ls -man
for file in $files 
 do
	echo "mkdir $file"
	mkdir $file				# Creates the folders based on file extensions
	echo "*.$file $file/"
	cp *.$file $file/		# copy specic extension files to the folder created
done
