#!/bin/bash
# Program:
# Backup Necessary Configuration Files Daily
# History:
# 2020/03/03	Alex Lion	First release

# Create folder named as current date like mm-dd-yyyy under user home. For example, /home/alexlion/backup
mkdir -p ~/backup/$(date +%Y%m%d)

# Create a log file and write current date information.
date > ~/backup/$(date +%Y%m%d)/backup-$(date +%Y%m%d).log

# If rc.local exists, copy it.
test -e /etc/rc.local && cp /etc/rc.local ~/backup/$(date +%Y%m%d) && echo "rc.local Copyied" >> ~/backup/$(date +%Y%m%d)/backup-$(date +%Y%m%d).log || echo "rc.local Not Exist" >> ~/backup/$(date +%Y%m%d)/backup-$(date +%Y%m%d).log

# Log diak partition uasge
date > ~/backup/$(date +%Y%m%d)/df-h-$(date +%Y%m%d).log && df -h >> ~/backup/$(date +%Y%m%d)/df-h-$(date +%Y%m%d).log
