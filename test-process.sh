#!/bin/bash

log_dir="/home/slava/Tmp"
process="$1"
if [ -z "$process" ]; then
  echo "Usage: $0 <process_name>"
  exit 1
fi
if pgrep "$process" > /dev/null; then
  echo "Process '$process' is running."
  exit 0
else
  echo "Process '$process' is not running."
  echo "$(date): Process '$process' not found." >> "$log_dir"/process_errors.log
  exit 1
fi
