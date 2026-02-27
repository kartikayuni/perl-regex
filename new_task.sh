#!/bin/bash -e

usage() { 
	cat <<EOU

Usage: 

$0 <new task>

Create boilerplate for new regex task

EOU
}

if [[ "$#" -ne "1" ]]; then
	usage
	exit 
fi

D="$1"
mkdir "$D" && touch "$D"/{'README.md','match.txt','no-match.txt','solution.txt'}
