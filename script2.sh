#!/bin/bash

read -p "Enter a username: " USERNAME

USER_ID=$(id -u "$USERNAME")
GROUPS=$(id -Gn "$USERNAME")

echo "User ID for $USERNAME: $USER_ID"
echo "Groups for $USERNAME: $GROUPS"


