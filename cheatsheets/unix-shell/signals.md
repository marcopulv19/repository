# Shell Signals Cheatsheet

## Termination Signals

| Signal | Number | Description | Command |
|--------|--------|-------------|---------|
| SIGTERM | 15 | Graceful termination (default) | `kill -15 <PID>` |
| SIGKILL | 9 | Force termination (cannot be caught) | `kill -9 <PID>` |
| SIGINT | 2 | Interrupt (Ctrl+C) | `kill -2 <PID>` |
| SIGQUIT | 3 | Quit (with core dump) | `kill -3 <PID>` |

## Pause & Resume

| Signal | Number | Description | Command |
|--------|--------|-------------|---------|
| SIGSTOP | 19 | Pause the process (cannot be caught) | `kill -19 <PID>` |
| SIGTSTP | 20 | Terminal stop (Ctrl+Z) | `kill -20 <PID>` |
| SIGCONT | 18 | Continue a paused process | `kill -18 <PID>` |

## System Events & Errors

| Signal | Number | Description | Command |
|--------|--------|-------------|---------|
| SIGHUP | 1 | Hang up (reload config) | `kill -1 <PID>` |
| SIGSEGV | 11 | Segmentation fault (invalid memory) | `kill -11 <PID>` |
| SIGALRM | 14 | Alarm (timeout) | `kill -14 <PID>` |

## User-defined Signals

| Signal | Number | Description | Command |
|--------|--------|-------------|---------|
| SIGUSR1 | 10 | User-defined signal 1 | `kill -10 <PID>` |
| SIGUSR2 | 12 | User-defined signal 2 | `kill -12 <PID>` |

## Process State

| Signal | Number | Description | Command |
|--------|--------|-------------|---------|
| SIGCHLD | 17 | Child process terminated or stopped | `kill -17 <PID>` |

## Other Signals

| Signal | Number | Description | Command |
|--------|--------|-------------|---------|
| SIGPIPE | 13 | Broken pipe (write to closed pipe) | `kill -13 <PID>` |
| SIGBUS | 7 | Bus error (hardware/memory failure) | `kill -7 <PID>` |
| SIGFPE | 8 | Floating-point exception (div by 0) | `kill -8 <PID>` |
| SIGILL | 4 | Illegal instruction (invalid CPU) | `kill -4 <PID>` |

## Keyboard Shortcuts

| Key Combination | Signal/Action | Description |
|-----------------|---------------|-------------|
| Ctrl+D | EOF | Closes the read input |
| Ctrl+C | SIGINT | Immediately terminates |
| Ctrl+Z | SIGTSTP | Suspends the process |
