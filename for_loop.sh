list_search () {
	sample_seq=${@:2}
	search_str=$1
	count=0

	for i in ${sample_seq//,} ; do
		if [[ $search_str == $i ]]; then
			count=$((count + 1))
		fi
	done
	echo "The sample sequence contains $count <$search_str>"
}

export -f list_search
