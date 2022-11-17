#!/bin/bash

# generate a file that consists of N lines where each line is a random sequences of
# true/false words

output_file="$1"
line_limit=10
word_limit=10

for (( i=1; i<=line_limit;i++ )); do
	line_to_write=""
	let n_words=RANDOM%word_limit

	for (( j=1; j<=n_words; j++ )); do
		line_to_write="$line_to_write $((RANDOM%2))"
	done
	line_to_write=${line_to_write//0/false}
	line_to_write=${line_to_write//1/true}

	echo "$line_to_write"
done >$output_file
