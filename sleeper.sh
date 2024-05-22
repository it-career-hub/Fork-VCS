#!/bin/bash
mkdir -p ~/Tmp/Sleeper
for i in {1..10}
      do
      date +'%T' >> ~/Tmp/Sleeper/output.txt
      ps | grep -v PID | grep -v grep | wc -l >> ~/Tmp/Sleeper/output.txt
      sleep 5
      done
cat /proc/cpuinfo >>  ~/Tmp/Sleeper/output.txt
cat /etc/os-relese | grep -w NAME
cat /etc/os-release  | grep -w NAME | sed 's/NAME="//' | sed 's/"//'

for file in {50..100}
      do
      touch ~/Tmp/Sleeper/$file.txt
      done



