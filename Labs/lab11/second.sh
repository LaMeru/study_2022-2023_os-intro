#!/usr/bin/env bash
i=1
for a in "$@"; do
	echo "$i: $a"
		((i++))
done
