#!/bin/bash
# Program:
# Get shell script file from GitHub and execute
# History:
# 2020/03/03	Alex Lion	First release

#Get sh file from GitHub public repository
wget https://raw.githubusercontent.com/alexclassroom/shell-script/master/dailybackup.sh

#After file downloading is done, wait for 3 seconds.
sleep 3

# Declare Variables
declare -i currentday=$(date +%Y%m%d);

# Check dailybackup.sh exists or not. If file exists, run it.
test -e ~/dailybackup.sh && sh dailybackup.sh || echo "dailybackup.sh Not Exists, $currentday backup failed." > Backup-Failed-$currentday.log

#After process is done, wait for 1 second.
sleep 1

# Delete dailybackup.sh
rm dailybackup.sh && echo "$currentday Backup Successfully!" > Backup-Success-$currentday.log
