#!/bin/bash

samples_file="test2.txt"
search_term="for"

while read line; do
	list_search $search_term $line
done <$samples_file
