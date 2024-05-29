#!/bin/bash

ps aux

read -p "Enter a process ID to stop: " PROCESS_ID

kil -9 "$PROCESS_ID" 2>/dev/null || echo "Process $PROCESS_ID not found"
