#!/bin/bash -e

actual="$(grep -P -f solution.txt match.txt | wc -l)"
expected="$(wc -l match.txt | cut -d ' ' -f1)"

if [[ "$actual" -eq "$expected" ]]; then 
	echo "Positive matches ok"
else 
	echo "Matched $actual out of $expected"
fi

actual="$(grep -P -f solution.txt no-match.txt | wc -l)"

if [[ "$actual" -eq '0' ]]; then 
	echo "Negative matches ok"
else 
	echo "Matched $actual when none expected"
fi

