# Batch Commands Cheatsheet

## User Information and System State

| Command | Description |
|---------|-------------|
| `whoami` | Print current user name |
| `echo %USERNAME%` | Display current username |
| `echo %USERDOMAIN%` | Display user's domain |
| `echo %COMPUTERNAME%` | Display computer name |
| `systeminfo` | Display detailed system configuration |

## System and Hardware Information

| Command | Description |
|---------|-------------|
| `systeminfo` | Displays system information |
| `wmic os get caption` | Display Windows OS version |
| `wmic cpu get name` | Display CPU information |
| `echo %OS%` | Display operating system |
| `echo %PROCESSOR_ARCHITECTURE%` | Display processor architecture |
| `tasklist` | List all running processes |
| `wmic logicaldisk get name` | List all disk drives |

## Environment Variables

| Command | Description |
|---------|-------------|
| `set` | Display all environment variables |
| `echo %PATH%` | Display PATH variable |
| `echo %TEMP%` | Display temporary directory |
| `echo %WINDIR%` | Display Windows directory |
| `echo %ProgramFiles%` | Display Program Files directory |
| `echo %USERPROFILE%` | Display user profile directory |

## File and Directory Commands

| Command | Description |
|---------|-------------|
| `dir` | List directory contents |
| `dir /S` | List directory contents recursively |
| `dir /A` | Show hidden files and attributes |
| `cd` | Display current directory |
| `cd <folder>` | Change directory |
| `mkdir <folder>` | Create a directory |
| `rmdir <folder>` | Remove a directory |
| `copy <source> <dest>` | Copy files |
| `move <source> <dest>` | Move files |
| `del <file>` | Delete a file |
| `type <file>` | Display file contents |

## File Attributes

| Command | Description |
|---------|-------------|
| `attrib +R <file>` | Make file read-only |
| `attrib -R <file>` | Remove read-only attribute |
| `attrib +H <file>` | Make file hidden |
| `attrib -H <file>` | Unhide file |
| `findstr <pattern> <file>` | Search for text in files |
| `find /C <string> <file>` | Count occurrences of string |

## Process Management

| Command | Description |
|---------|-------------|
| `tasklist` | List all running processes |
| `tasklist /FI "IMAGENAME eq <name>"` | Filter processes by name |
| `taskkill /IM <process>` | Kill process by name |
| `taskkill /PID <pid>` | Kill process by PID |
| `start <program>` | Start a program |
| `start /WAIT <program>` | Start program and wait |

## Date and Time

| Command | Description |
|---------|-------------|
| `echo %DATE%` | Display current date |
| `echo %TIME%` | Display current time |
| `date /T` | Display date |
| `time /T` | Display time |

## Network Commands

| Command | Description |
|---------|-------------|
| `ipconfig` | Display network configuration |
| `ipconfig /all` | Display detailed network info |
| `ping <host>` | Test connection to a host |
| `tracert <host>` | Trace route to a host |
| `netstat` | Display active connections |
| `ipconfig /flushdns` | Clear DNS cache |

## Privileged Commands

| Command | Description |
|---------|-------------|
| `runas /user:<domain\user> <command>` | Run command as different user |
