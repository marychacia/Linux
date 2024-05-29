#!/bin/bash

read -p "Enter the directory name: " DIR_NAME

if [ ! -d "$DIR_NAME" ]; then
	echo "Directory '$DIR_NAME' does not exist"
	exit 1
fi

NUM_FILES=$(find "$DIR_NAME" -maxdepth 1 -type f | wc -l)
LAST_MODIFIED=$(stat -c "%y" "$DIR_NAME")

LARGEST_FILE=$(find "$DIR_NAME" -maxdepth 1 -type f -exec du -b {} + | sort -n | tail -1 | cut -f2)
SMALLEST_FILE=$(find "$DIR_NAME" -maxdepth 1 -type f -exec du -b {} + | sort -n | head -1 | cut -f2)

echo "Directory: $DIR_NAME"
echo "Number of files: $NUM_FILES"
echo "Last modified: $LAST_MODIFIED"
echo "Largest file: $LARGEST_FILE"
echo "Smallest file: $SMALLEST_FILE"


