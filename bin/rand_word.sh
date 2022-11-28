#!/bin/bash

# Generate a sequence of random words from the vocabularly

ENG_DIR=~/eng
PATH_TO_READ=$ENG_DIR

l=false

getopts ":l:" options
case $options in
	l ) l=true
	part_of_speach="$OPTARG"
	shift $(($OPTIND - 1))
	;;
esac


case $part_of_speach in
	adj ) PATH_TO_READ="$PATH_TO_READ/adjectives"
	;;
	adv ) PATH_TO_READ="$PATH_TO_READ/adverbs"
	;;
esac

if [[ $l == true ]]; then
	mapfile -t words_arr < <(basename -s .txt $PATH_TO_READ/*.txt)

	(for word in "${words_arr[@]}"; do
		printf "%s\n" $word
	done) | paste - - - - | column -t
else
	NUM_WORDS="$1"

	mapfile -t words_arr < <(basename -s .txt $(ls $ENG_DIR/adjectives/*.txt \
	$ENG_DIR/adverbs/*.txt) | shuf -n $NUM_WORDS)

	(for word in "${words_arr[@]}"; do
		printf "%s\n" $word
	done) | paste - - - - | column -t
fi
