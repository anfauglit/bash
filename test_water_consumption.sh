#!/bin/bash

# https://www.codechef.com/problems/WATERCONS?tab=statement
# A test program for the water_consumption script.

# If provided consider the first positional parameter as the name of a file with test cases
# or try to use the default file.

f_cases=${1:-test.txt}

if [[ ! -e "$f_cases" ]]; then
	echo "The file $f_cases does not exist." >&2
	exit 1
	if [[ ! -r "$f_cases" ]]; then
		echo "The file $f_cases is not readable." >&2
		exit 1
	fi
fi
	

while read w; do
	echo "---"
	echo "Test input string: $w".
	echo "$w" | ./water_consumption.sh
done <$f_cases

