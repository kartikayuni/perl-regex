#!/bin/bash -e

actual="$(grep -P -f solution.txt match.txt | wc -l)"
expected="$(wc -l match.txt | cut -d ' ' -f1)"

if [[ "$actual" -ne "$expected" ]]; then
	echo "Matched $actual out of $expected"
	echo "These lines should match but did NOT: "
	grep -Pv -f solution.txt match.txt
else
	echo "Positive matches ok"
fi

actual="$(grep -P -f solution.txt no-match.txt | wc -l)"

if [[ "$actual" -ne '0' ]]; then
	echo "Matched $actual when none expected"
	echo -e "This line match but should NOT: "
	grep -P -f solution.txt no-match.txt
else
	echo "Negative matches ok"
fi

