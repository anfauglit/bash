#!/bin/bash

# the function to test the possibility of achieving the required water temperature in the bath

is_possible() {
	let delta_t=$2-$1
	hot_volume=$3
	cold_volume=$4

	if (( delta_t >= 0 && delta_t <= hot_volume )); then
		return 0
	elif (( delta_t < 0 && ${delta_t#-} <= cold_volume )); then
		return 0
	fi
	return 1
}

samples_file="$1"

while read params; do
	is_possible $params && echo "yes" || echo "no"
done <$samples_file
