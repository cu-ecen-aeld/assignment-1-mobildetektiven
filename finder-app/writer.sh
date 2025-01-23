#!/bin/sh

#$1 full path to a file
#$2 string to write to the file
#
if [ -z $1 ] || [ -z $2 ]; then 
	echo input parameter missing
	exit 1
fi

dir=$(dirname $1)

#-p lets mkdir create parent directories if non existent
mkdir -p $dir
cd $dir
# Write the string to the file specified in $1
echo $2 > $1
