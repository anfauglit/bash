#!/bin/bash

tr -sc "[:alpha:]" "\n" < "$1" | tr "[[:upper:]]" "[[:lower:]]" | sort | uniq -c | sort \
-nr 
