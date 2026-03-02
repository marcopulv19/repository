# Shell Debugging Cheatsheet

## General Diagnostics

| Command | Description |
|---------|-------------|
| `dmesg` | Show kernel messages |
| `dmesg \| grep error` | Filter errors in kernel logs |
| `top` | Monitor system resources (CPU, memory, etc.) |
| `htop` | Interactive version of top |
| `uptime` | Show system uptime and load average |
| `vmstat 1` | Analyze system performance (CPU, memory, I/O) |

## Processes

| Command | Description |
|---------|-------------|
| `ps aux` | List all processes |
| `ps aux \| grep <process>` | Search for a specific process |
| `strace -p <PID>` | Trace system calls of a process |
| `lsof -p <PID>` | Show open files by a process |

## Networking

| Command | Description |
|---------|-------------|
| `ping <host>` | Test connection to a host |
| `ss -tuln` | Show open ports and active connections |
| `tcpdump -i <interface>` | Capture network packets on an interface |

## Memory

| Command | Description |
|---------|-------------|
| `free -h` | Show memory usage in a human-readable format |
| `cat /proc/meminfo` | Detailed memory information |
| `pmap <PID>` | Memory mapping of a process |

## Disks and File System

| Command | Description |
|---------|-------------|
| `df -h` | Show available disk space |
| `du -sh <directory>` | Show space used by a directory |
| `iostat 1` | Disk I/O statistics |
| `fsck <device>` | Check and repair file system |

## Logs and Messages

| Command | Description |
|---------|-------------|
| `journalctl -xe` | View detailed system logs (systemd) |
| `tail -f /var/log/syslog` | Show real-time logs |
| `less /var/log/syslog` | Examine logs with scrolling |

## Advanced Debugging

| Command | Description |
|---------|-------------|
| `gdb <program> <core_dump>` | Debugger for C/C++ programs |
| `perf top` | System performance profiling |
| `valgrind <program>` | Memory debugging (e.g., memory leaks) |
