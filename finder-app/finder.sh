#!/bin/sh
# Fault handling 
if [ -z "$1" ]; then 
	echo "Folder parameter missing"
	exit 1
fi

if [ -z "$2" ]; then 
	echo search string missing
	exit 1
fi

if [ ! -d "$1" ]; then
	echo "Directory does not exist"
	exit 1
fi

# Use find to find all files in the directory $1 pipe the output to wc for counting 
# and store the result in count
count=$(find $1 -type f | wc -l)
# Use grep to find all matches of the string $2 in all files in dir $1, pipe the 
#output to ws for counting
matches=$(grep -r $2 $1 2>/dev/null | wc -l)
#Print the result
echo The number of files are $count and the number of matching lines are $matches
