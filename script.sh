#!/bin/bash

read -p "Enter a number: " NUMBER

check_number() {
if [ $((NUMBER %2)) -eq 0 ]; then 
	echo "$NUMBER is even" 
else
	echo "$NUMBER is odd" 
fi
}


result_file="result.txt"
check_number $NUMBER > $result_file  

echo "Result: "
cat $result_file && cat $result_file >> "file2"

read -p "Do you want to delete the result file? (y/n): " DELETE_CHOICE
if [ "$DELETE_CHOICE" == "y" ]; then
	rm "result.txt"
else
	touch "result.txt"
fi


