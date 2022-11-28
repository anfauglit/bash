#!/bin/bash

adj="$(shuf -n20 < <(basename -s .txt $(ls ~/eng/adjectives/*.txt)))"
adv="$(shuf -n20 < <(basename -s .txt $(ls ~/eng/adverbs/*.txt)))"
noun="$(shuf -n20 < <(basename -s .txt $(ls ~/eng/nouns/*.txt)))"
verb="$(shuf -n20 < <(basename -s .txt $(ls ~/eng/verbs/*.txt)))"


paste <(printf "%-10s\n" $noun) <(printf "%-10s\n" $verb) <(printf "%-10s\n" $adv) <(printf "%-10s\n" $adj)
