#!/bin/bash

# https://edabit.com/challenge/3LpBLgNRyaHMvNb4j

# The script adds two integers which are passed as positional parameters

re='^-?[[:digit:]]+$'

if [[ $# != 2 ]]; then
	echo "You must supply two integers to the program." >&2
	exit 1
fi

[[ $1 =~ $re && $2 =~ $re ]] && { echo $(($1 + $2)); exit 0; }

echo "Both parameters must be integers." >&2
exit 1
