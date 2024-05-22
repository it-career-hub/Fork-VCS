#!/bin/bash
mkdir -p /opt/040324-wde/anastasia/sleeper
for i in {1..10}
    do
    date +'+%T' >> /opt/040324-wde/anastasia/sleeper/output.txt
    ps | grep -v PID | grep -v grep | wc -l >> /opt/040324-wde/anastasia/sleeper/output.txt
    sleep 5
    done
cat /proc/cpuinfo >> /opt/040324-wde/anastasia/sleeper/output.txt
cat /etc/os-release | grep -w NAME | sed  's/NAME=//g' | sed 's/"//'  

for file in {50..100}
    do
    touch /opt/040324-wde/anastasia/sleeper/$file.txt
    done