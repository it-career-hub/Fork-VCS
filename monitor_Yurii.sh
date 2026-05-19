#!/bin/bash

os_version=$(cat /etc/os-release | grep "VERSION=" | cut -d '"' -f 2)
echo "OS Version: $os_version"

current_date=$(date)
echo "Current Date: $current_date"

uptime_system=$(uptime -p)
echo "Uptime: $uptime_system"

system_load=$(uptime | awk -F'load average:' '{ print $2 }')
echo "System Load:$system_load"

disk_usage=$(df -h / | awk 'NR==2 {print $5}')
echo "Disk Usage: $disk_usage"

echo "Top Processes By Memory:"
ps aux --sort=-%mem | head -n 6

process_count=$(ps aux | wc -l)
echo "Process Count: $process_count"

user_count=$(who | awk '{print $1}' | sort | uniq | wc -l)
echo "User Count: $user_count"