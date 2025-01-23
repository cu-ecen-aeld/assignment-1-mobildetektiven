#!/bin/sh
#Error handling
echo $1
echo $2
if [ -z "$1" ]; then 
	echo "Folder parameter missing"
	exit 1
fi

if [ -z "$2" ]; then 
	echo search string missing
	exit 1
fi

if [ -d "$1" ]; then
	echo "Directory exists"
else
	echo "Directory does not exist"
	exit 1
fi

count=$(find $1 -type f | wc -l)
matches=$(grep -rnw . -e $1 2>/dev/null | wc -l)
echo The number of files are $count and the number of matching lines are $matches
