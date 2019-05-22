#! /bin/bash

file="src/shell/$1.sh"
if [ -f "$file" ]
then
	sh $file $2
else
	echo "Invalid command '$1'."
fi
