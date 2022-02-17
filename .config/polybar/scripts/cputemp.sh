#!/usr/bin/zsh

temp=$(sensors | grep 'Tctl:' | cut -c 16-22)
usage=$(top -b -n1 | grep "Cpu(s)" | awk '{print $2 + $4}')
echo $temp - $usage%
