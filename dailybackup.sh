#!/bin/bash
# Program:
# Backup Necessary Configuration Files Daily
# History:
# 2020/03/03	Alex Lion	First release

#Declare Variables
declare -i currentday=$(date +%Y%m%d)

# Create folder named as current date like mm-dd-yyyy under user home. For example, /home/alexlion/backup
mkdir -p ~/backup/$currentday

# Create a log file and write current date information.
date > ~/backup/$currentday/backup-$currentday.log

# If rc.local exists, copy it.
test -e /etc/rc.local && cp /etc/rc.local ~/backup/$currentday && echo "rc.local Copyied" >> ~/backup/$currentday/backup-$currentday.log || echo "rc.local Not Exist" >> ~/backup/$currentday/backup-$currentday.log

# Log diak partition uasge
date > ~/backup/$currentday/df-h-$currentday.log && df -h >> ~/backup/$currentday/df-h-$currentday.log
