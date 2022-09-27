#!/bin/bash

echo -n 'Enter search option (--help,--version,--scan): '
read option
APPLICATION_VERSION=$(git --version)
value=$option

case $option in
	--help | --h | -help | -h | h )
		./help.sh
		;;
	--version | --v | -v | -version | version | v)
		echo -n "Application version is: $APPLICATION_VERSION"
		;;
	--scan)
		./file_scanner.sh
		;;
esac
