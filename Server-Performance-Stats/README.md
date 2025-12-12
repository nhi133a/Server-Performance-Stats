# Server-Performance-Stats
This project provides a Bash script that analyzes key server performance metrics. It displays CPU usage, memory and disk utilization (including percentages), and lists the top processes by CPU and memory consumption. The script is lightweight, easy to run on any Linux system, and helps administrators quickly assess server health and resource usage.
## Installing Required Packages
```bash
# Install sysstat for CPU monitoring
sudo apt update && sudo apt install sysstat -y   # For Ubuntu/Debian
sudo yum install sysstat -y                      # For CentOS/RHEL

# Install procps (usually pre-installed on most systems)
sudo apt install procps -y
sudo yum install procps -y
```
## Get Started
### Step by step
1. **Clone the repository**
```
git clone https://github.com/nhi133a/Server-Performance-Stats.git
cd Server-Performance-Stats
```
2. **Assign executable permission to the script using chmod**
```bash
chmod +x server-stats.sh
```
3. **Excute the script**
```bash

./server-stats.sh
```
This project is a part of roadmap.sh DevOps projects.
Project URL:
[(https://roadmap.sh/projects/server-stats)]
