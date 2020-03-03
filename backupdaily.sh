#!/bin/bash
# Program:
# Backup Necessary Configuration Files Daily
# History:
# 2020/03/03	Alex Lion	First release

# Create folder named as current date like mm-dd-yyyy under user home. For example, /home/alexlion/backup
mkdir -p ~/backup/$(date +%x | tr '/' '-')

# Create a log file and write current date information.
date > ~/backup/$(date +%x | tr '/' '-')/$(date +%x | tr '/' '-')-backup.log
