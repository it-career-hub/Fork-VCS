#!/bin/bash
os_version=$(cat /etc/os-release | grep "VERSION=" | cut -d '''' -f 2)
echo "OS Version: $os_version"
echo "Еще будет"