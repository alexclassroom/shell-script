#!/bin/bash
# Program:
# After updating in Ubuntu, run this script can let admin know needing reboot or not. Remember run chmod +x for this script.
# History:
# 2021/01/17	Alex Lion	First release
if [ -f /var/run/reboot-required ]; then
  echo 'reboot required'
fi
