#!/bin/bash

# The script which adds new words to my vocabulary. New words are put in a folder depending on
# their part of speach.

# TO DO
# Write verification tests for input
# Add verbose mode
# Add option to add laws for a particular part of speach

ENG_DIR=~/eng
PATH_TO_WRITE=$ENG_DIR

r=false

getopts ":r" options
case $options in
	r ) r=true
	shift $(($OPTIND - 1))
	;;
esac

part_of_speach="$1"

case $part_of_speach in
	adj ) PATH_TO_WRITE="$PATH_TO_WRITE/adjectives"
	;;
	adv ) PATH_TO_WRITE="$PATH_TO_WRITE/adverbs"
	;;
	noun ) PATH_TO_WRITE="$PATH_TO_WRITE/nouns"
	;;
	verb ) PATH_TO_WRITE="$PATH_TO_WRITE/verbs"
	;;
esac

if [[ $r == true ]]; then
	read -d '' rule
	printf "\n%s" "$rule" >> "$PATH_TO_WRITE/rules.md"
	echo
	exit 0
fi

words_arr=("${@:2}")
words_arr=("${words_arr[@]// /_}")

for word in ${words_arr[@]}; do
	if [[ ! -f "$PATH_TO_WRITE/$word.txt" ]]; then
		>"$PATH_TO_WRITE/$word.txt"
	else
		echo "The file $word.txt already exists"
	fi
done
