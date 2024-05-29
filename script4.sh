#!/bin/bash

numbers=()

while true; do
	read -p "Enter a number (or 'q' to quit): " num
	if [ "$num" == "q" ]; then
		break
	fi
	numbers+=("$num")
done

sort_nums=($(printf "%s\n" "${numbers[@]}" | sort -n))
echo "Numbers entered: " "${sort_nums[@]}"



