#!/bin/bash
# server-stats.sh - Hiển thị thông số hiệu suất server

echo "===== SERVER PERFORMANCE STATS ====="

# CPU Usage
echo -e "\n[CPU USAGE]"
CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8"%"}')
echo "Total CPU Usage: $CPU_USAGE"

# Memory Usage
echo -e "\n[MEMORY USAGE]"
free -h
MEM_TOTAL=$(free | awk '/Mem:/ {print $2}')
MEM_USED=$(free | awk '/Mem:/ {print $3}')
MEM_PERCENT=$(free | awk '/Mem:/ {printf("%.2f", $3/$2*100)}')
echo "Used: $MEM_USED / Total: $MEM_TOTAL ($MEM_PERCENT%)"

# Disk Usage
echo -e "\n[DISK USAGE]"
df -h --total | grep total

# Top 5 processes by CPU
echo -e "\n[TOP 5 PROCESSES BY CPU]"
ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6

# Top 5 processes by Memory
echo -e "\n[TOP 5 PROCESSES BY MEMORY]"
ps -eo pid,comm,%mem --sort=-%mem | head -n 6

# Stretch goal: OS version, uptime, load average
echo -e "\n[EXTRA INFO]"
echo "OS Version: $(lsb_release -d | cut -f2)"
echo "Uptime: $(uptime -p)"
echo "Load Average: $(uptime | awk -F'load average:' '{print $2}')"
echo "Logged-in Users: $(who | wc -l)"
`
