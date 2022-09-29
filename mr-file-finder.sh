#!/bin/bash
echo 'Please select --help to get the instruction on how to use this application'
echo -n 'Enter search option (--help,--version,--scan): '
read option

user_option=$option

case $user_option in
	--help | --h | -help | -h | h )
		./help.sh
		;;
	--version | --v | -v | -version | version | v)
		#read version
		APPLICATION_VERSION=$(docker --version)
		echo $APPLICATION_VERSION
		;;
	--scan | --s | s | S)
		./file_scanner.sh
		;;
esac
