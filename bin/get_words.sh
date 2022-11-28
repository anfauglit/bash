#!/bin/bash

tr -sc "[:alpha:]" "\n" < "$1" | tr "[[:upper:]]" "[[:lower:]]" | sort | uniq | grep -E \
'[[:alpha:]]{2,}' >"$2"
