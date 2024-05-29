#!/bin/bash 

read -p "Enter a number: " USER_NUMBER 

for ((i = 1; i <= USER_NUMBER; i++)); do
	if [ $((i % 3)) -eq 0 ]; then
		echo "Fizz!"
	else [ $((i % 5)) -eq 0 ];
		echo "Buzz!" 
	fi
done


