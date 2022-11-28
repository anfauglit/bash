BEGIN {
	n = 0;
}

{
	if ($0 ~ /^[[:upper:]]/) {
		printf("%3d %s\n", ++n, $0);
	} else if (NF == 0) {
		n = 0;
		printf("\n");
	} else {
		printf("%s\n", $0);
	}
}
