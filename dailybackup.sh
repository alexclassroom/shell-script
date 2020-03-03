#!/bin/bash
# Program:
# Backup Necessary Configuration Files Daily
# History:
# 2020/03/03	Alex Lion	First release

# Declare Variables
declare -i nowday=$(date +%Y%m%d)

# Create folder named as current date like yyyymmdd under user home. For example, /home/alexlion/backup/20200303
mkdir -p ~/backup/$nowday

# Create a log file and write current date information.
date > ~/backup/$nowday/backup-$nowday.log

# If rc.local exists, copy it.
test -e /etc/rc.local && cp /etc/rc.local ~/backup/$nowday && echo "rc.local Copyied" >> ~/backup/$nowday/backup-$nowday.log || echo "rc.local Not Exists" >> ~/backup/$nowday/backup-$nowday.log

# Log disk partition uasge
date > ~/backup/$nowday/df-h-$nowday.log && df -h >> ~/backup/$nowday/df-h-$nowday.log
