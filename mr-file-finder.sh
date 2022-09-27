#!/bin/bash

echo -n 'Enter search option (--help,--version,--scan): '
read n
APPLICATION_VERSION=$(git --version)
value=$n

case $n in
	--help | --h | -help | -h | h )
		./help.sh
		;;
	--version | --v | -v | -version | version | v)
		echo -n "Application version is: $APPLICATION_VERSION"
		;;
	--scan)
		echo "scan"
		;;
esac
