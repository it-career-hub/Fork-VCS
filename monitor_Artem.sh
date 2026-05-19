#!/bin/bash
os_version=$(cat /etc/os-release | grep "VERSION=" | cut -d '"' -f  2)
echo "OS Version: $os_version"
current_date=$(date)
echo "Current Date: $cureent_date"
uptime=$(uptime -p)
echo "Uptime: $uptime"
system_load=$(uptime | awk -F',''{ print $3 $4 $5}')
disk_usage=$(df -h / | awk 'NR==2 {print $5}')
echo "Disk Usage: $disk_usage"
top_processes=$(ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head -n 6)
echo "Top processes:"
echo "$top_processes"
process_count=$(ps -ef | grep -v "PID" | w - l)
echo "Total Processes: $process_count"
user_count=$(w | tail -n +3 |wc -l)
echo "Logged in Users: $user_count"