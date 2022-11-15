#!/bin/bash

# https://www.codechef.com/problems/WATERCONS?tab=statement

# The daily water intake recommended by the doctor is 2 to 4 liters

u_limit=4000
l_limit=2000

# Receive from the user the amount of water he has consumed today

echo "The doctor recommended you to drink 2 to 4 liters of water daily."
read -p "How much water, in mililiters, have you drunk today? " w

if [[ "$w" =~ ^[0-9]+$ ]]; then
	if ((w < l_limit)); then
		echo "You have not drunk enough water today. Check the recommendations."
	elif ((w > u_limit)); then
		echo "You have drunk too much water today. Check the recommendations."
	else
		echo "You have drunk the recommended amount of water. Good job!"
	fi
else
	echo "The amount of water consumed must be a positive integer." >&2
	exit 1
fi
