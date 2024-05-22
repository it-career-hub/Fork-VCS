    #!/bin/bash
    mkdir -p ~/tmp/sleeper
    for i in (1..10) 
    do
    date + '%T' >> ~/tmp/sleeper/output.txt
    ps -ae | grep -v PID | grep -v grep | wc -l >> ~/tmp/sleeper/output.txt
    sleep 5
    done
    cat /proc/cpuinfo >> ~/tmp/sleeper/output.txt
    cat /etc/os-release | grep -w NAME 
        cat /etc/os-release | grep -w NAME | sed 's/NAME="//' | sed 's/"//'
    for file in {50..100}
    do
    touch ~/tmp/sleeper/output.txt/$file.txt
    done