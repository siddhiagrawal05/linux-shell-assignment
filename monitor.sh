#!/bin/bash
# Purpose: To log CPU and Memory usage every few seconds
# Author: Siddhi
# Date: 16-11-2025

# Log file (change 'user' to your username)
LOGFILE="/home/ubuntu/system_log.txt"

# Run in a loop
while true
do
    echo "------ $(date) ------" >> $LOGFILE
    echo "CPU Usage:" >> $LOGFILE
    top -b -n1 | grep "Cpu(s)" >> $LOGFILE

    echo "Memory Usage:" >> $LOGFILE
    free -h >> $LOGFILE

    echo "" >> $LOGFILE

    # Wait for 5 seconds
    sleep 5
done

chmod +x monitor .sh
./monitor.sh

